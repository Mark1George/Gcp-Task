resource "google_bigquery_dataset" "dataset" {
  dataset_id                  = "${var.BigQuery_name}"
  description                 = "This is a test description"
  location                    = var.query_location
  default_table_expiration_ms = 3600000
  
  access { 
    role = var.query_role
    user_by_email = var.serv
  }
}