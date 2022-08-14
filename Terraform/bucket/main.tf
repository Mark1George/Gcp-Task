resource "google_storage_bucket" "static-site" {
  name          = "${var.bucket_name}"
  location      = var.bucket_location
  storage_class = "${var.bucket_sclass}"

}

resource "google_storage_bucket_iam_member" "member" {   
  bucket = google_storage_bucket.static-site.name
  role = var.role_bucket
  members = [
            var.member,
  ]
}