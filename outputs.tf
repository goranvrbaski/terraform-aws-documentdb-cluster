output "cluster_id" {
  value = aws_docdb_cluster.this.cluster_resource_id
}

output "cluster_arn" {
  value = aws_docdb_cluster.this.arn
}

output "cluster_members" {
  value = aws_docdb_cluster.this.cluster_members
}

output "cluster_endpoint" {
  value = aws_docdb_cluster.this.endpoint
}

output "cluster_reader_endpoint" {
  value = aws_docdb_cluster.this.reader_endpoint
}

output "master_username" {
  value = var.master_username
}

output "master_password" {
  value     = random_password.master_password.result
  sensitive = true
}