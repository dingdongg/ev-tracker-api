resource "aws_s3_bucket" "ev_tracker" {
    bucket = "ev-tracker-savefiles"

    tags = {
        Name = "EV Tracker savefiles bucket"
    }
}

output "s3BucketId" {
    description = "s3 bucket id"
    value = aws_s3_bucket.ev_tracker.id
}