region = "ap-south-1"
profile = "dps_devops"

cluster_name         = "eks-dev-cluster"
cluster_version      = "1.28"
create_node_group    = true
number_of_nodegroups = 1
node_group_name      = "node-group-1"
desired_size         = 1
max_size             = 4
min_size             = 1
ami_type             = "AL2_ARM_64" #"AL2_x86_64"
capacity_type        = "ON_DEMAND"
instance_types       = ["r6a.large"] #r6a.large r6g.2xlarge
disk_size            = 200


#thumbprint_list       = 
client_id_list        = "sts.amazonaws.com"
cluster_subnet_ids    = ["subnet-01c240ff11ba078e3", "subnet-08d6be9b4d8437a78", "subnet-0fd591faaaacb4ab2", "subnet-0061e5a66c31bd54e"]
node_group_subnet_ids = ["subnet-01c240ff11ba078e3", "subnet-08d6be9b4d8437a78"]

////below changes made by akhil//////
tags    = { "Name" = "dev-cluster-instance" }
profile = "dps_devops"
