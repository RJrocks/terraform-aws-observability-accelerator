data "aws_eks_cluster_auth" "eks_cluster_1" {
  name     = var.eks_cluster_1_id
  provider = aws.eks_cluster_1
}

data "aws_eks_cluster_auth" "eks_cluster_2" {
  name     = var.eks_cluster_2_id
  provider = aws.eks_cluster_2
}

data "aws_eks_cluster" "eks_cluster_1" {
  name     = var.eks_cluster_1_id
  provider = aws.eks_cluster_1
}

data "aws_eks_cluster" "eks_cluster_2" {
  name     = var.eks_cluster_2_id
  provider = aws.eks_cluster_2
}
