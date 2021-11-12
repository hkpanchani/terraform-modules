output "endpoint" {
  value = "${aws_eks_cluster.main.endpoint}"
}

output "eks_cluster_name" {
  value = "${aws_eks_cluster.main.id}"
}

output "kubeconfig-certificate-authority-data" {
  value = "${aws_eks_cluster.main.certificate_authority[0].data}"
}