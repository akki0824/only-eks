output "identity" {
  value = module.eks.identity
}




output "cluster_details" {
  value = module.eks.cluster_details

}

output "identity_all" {
  value = module.eks.identity_all
}

/////changes by akhil
output "asg_name" {
  value = module.eks.asg_name
  
}



  