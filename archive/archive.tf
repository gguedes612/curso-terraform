terraform {
  required_providers {
    archive = {
      source = "hashicorp/archive"
      version = "2.2.0"
    }
  }
}

data "archive_file" "arquivozip" {
  type = "zip"
  source_file = "data/data.txt"
  output_path = "backup.zip"

}

output "arquivozip" {
  value = data.archive_file.arquivozip.output_size
}