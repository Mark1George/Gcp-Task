resource "google_service_account" "SVaccounnt" {
  account_id   = var.acc_id
  display_name = var.acc_name
}
resource "google_project_iam_member" "SVaccounnt_rb" {
  project = "project1-vois"
  role    = var.acc_role
  member  = "serviceAccount:${google_service_account.SVaccounnt.email}"
}
