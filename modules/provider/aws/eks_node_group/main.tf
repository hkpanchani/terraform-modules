resource "aws_eks_node_group" "main" {
  cluster_name = "${var.cluster_name}"

  node_group_name        = "${var.node_group_name}"
  node_role_arn          = "${var.node_role_arn}"

  subnet_ids = "${var.subnet_ids}"

  ami_type       = "${var.ami_type}"
  disk_size      = "${var.disk_size}"
  instance_types = "${var.instance_types}"
  capacity_type  = "${var.capacity_type}"

  labels = "${var.labels}"

  release_version = "${var.ami_release_version}"

  tags = "${var.tags}"

  scaling_config {
    desired_size = "${var.desired_size}"
    max_size = "${var.max_size}"
    min_size = "${var.min_size}"

  }

  dynamic "remote_access" {
    for_each = "${var.ec2_ssh_key}" != null && "${var.ec2_ssh_key}" != "" ? ["true"] : []
    content {
      ec2_ssh_key = "${var.ec2_ssh_key}"
      source_security_group_ids = "${var.source_security_group_ids}"
    }
  }

  # Optional: Allow external changes without Terraform plan difference
  lifecycle {
    ignore_changes = [scaling_config[0].desired_size]
  }
}


# Add-on addition in EKS cluster
resource "aws_eks_addon" "vpc_cni" {
  count = "${var.addon_create_vpc_cni}" ? 1 : 0

  cluster_name      = "${var.cluster_name}"
  addon_name        = "vpc-cni"
  resolve_conflicts = "OVERWRITE"
  addon_version     = "${var.addon_vpc_cni_version}"

}

resource "aws_eks_addon" "kube_proxy" {
  count = "${var.addon_create_kube_proxy}" ? 1 : 0

  cluster_name      = "${var.cluster_name}"
  addon_name        = "kube-proxy"
  resolve_conflicts = "OVERWRITE"
  addon_version     = "${var.addon_kube_proxy_version}"

}

resource "aws_eks_addon" "coredns" {
  count = "${var.addon_create_coredns}" ? 1 : 0

  depends_on = [aws_eks_node_group.main]

  cluster_name      = "${var.cluster_name}"
  addon_name        = "coredns"
  resolve_conflicts = "OVERWRITE"
  addon_version     = "${var.addon_coredns_version}"
}