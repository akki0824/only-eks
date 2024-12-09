data "aws_caller_identity" "current" {}


module "eks" {
  source               = "../modules/eks"
  region               = var.region
  cluster_name         = var.cluster_name
  cluster_version      = var.cluster_version
  create_node_group    = var.create_node_group
  number_of_nodegroups = var.number_of_nodegroups
  node_group_name      = var.node_group_name
  desired_size         = var.desired_size
  disk_size            = var.disk_size
  max_size             = var.max_size
  min_size             = var.min_size
  ami_type             = var.ami_type
  capacity_type        = var.capacity_type
  instance_types       = var.instance_types
  tags                 = var.tags
  subnet_ids           = var.cluster_subnet_ids    #
  node_group_subnet_id = var.node_group_subnet_ids #
  role_arn             = aws_iam_role.eks_cluster_role.arn
  node_role_arn        = aws_iam_role.worker-role.arn
  depends_on = [
    aws_iam_role_policy_attachment.example-AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.example-AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.example-AmazonEC2ContainerRegistryReadOnly,
  ]
}

