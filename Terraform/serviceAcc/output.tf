output "email" {
    value = google_service_account.SVaccounnt.email
  
}

output "member" {
  value = google_project_iam_member.SVaccounnt_rb.member
}