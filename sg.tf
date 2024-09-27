resource "aws_security_group_rule" "allow_everything_in" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_eks_cluster.fiap_fast_food_eks.vpc_config[0].cluster_security_group_id
}