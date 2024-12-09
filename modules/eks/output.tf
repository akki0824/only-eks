output "identity" {
  value = aws_eks_cluster.sta_cluster.identity[0].oidc[0].issuer
}

output "cluster_details" {
  description = "Kubernetes Cluster Name"
  value       = aws_eks_cluster.sta_cluster.id
}

output "cluster_all" {
  value = aws_eks_cluster.sta_cluster
  
}

output "identity_all" {
  value = aws_eks_cluster.sta_cluster.identity
}

//////changes by akhil////////[0].autoscaling_groups[0].name
output "asg_name" {
 value = aws_eks_node_group.worker-group[0].resources[0].autoscaling_groups[0].name       
 
  
}