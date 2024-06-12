package bucket

import (
	"bytes"
	"context"
	"fmt"
	"io"

	"github.com/aws/aws-sdk-go-v2/aws"
	"github.com/aws/aws-sdk-go-v2/config"
	"github.com/aws/aws-sdk-go-v2/service/s3"
)

type CloudStorage interface {
	DownloadItem(itemId string) (any, error)
	UploadItem(item any) error
}

type S3 struct {
	Client *s3.Client
}

type CloudItem struct {
	Id string
	Value []byte
}

func New() (*S3, error) {
	cfg, err := config.LoadDefaultConfig(context.TODO(), config.WithRegion("us-east-1"))
	if err != nil {
		return nil, fmt.Errorf("S3::New() -> Failed to load credentials: %v", err)
	}

	cl := s3.NewFromConfig(cfg)
	return &S3{cl}, nil
}

func (sc *S3) PutInBucket(bucketName string, item CloudItem) error {
	_, err := sc.Client.PutObject(context.TODO(), &s3.PutObjectInput{
		Bucket: aws.String(bucketName),
		Key: &item.Id,
		Body: bytes.NewReader(item.Value),
		ContentDisposition: aws.String("attachment"),
	})

	if err != nil {
		return fmt.Errorf("S3::PutInBucket() -> failed to upload item: %v", err)
	}

	return nil
}

func (sc *S3) GetCloudItem(bucketName string, itemId string) ([]byte, error) {
	res, err := sc.Client.GetObject(context.TODO(), &s3.GetObjectInput{
		Bucket: aws.String(bucketName),
		Key: &itemId,
	})
	
	if err != nil {	
		return []byte{}, fmt.Errorf("S3::GetCloudItem() -> failed to download item: %v", err)
	}
	defer res.Body.Close()

	contents := bytes.NewBuffer(nil)
	if _, err := io.Copy(contents, res.Body); err != nil {
		return []byte{}, fmt.Errorf("S3::GetCloudItem() -> failed to transfer buffer contents: %v", err)
	}

	return contents.Bytes(), nil
}