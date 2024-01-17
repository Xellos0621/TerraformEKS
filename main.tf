module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "sungjin-cluster"
  cluster_version = "1.24"
  vpc_id = "vpc-0afbc48cb594cfe7e"

  private_subnets = ["subnet-089235948b66b0c46", "subnet-0fe80a4e08af5b4a2"]
  public_subnets  = ["subnet-088da8f211679702a", "subnet-073bcb2a92f6c43c0"]
}