*Exapmle*

```
module "example_ssh_key" {
  source     = "./terraform-modules/provider/aws/key_pair/v1"
  key_name   = "eks_node_t3"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPyciJIRAXVIzXSxEx57LYxwbuVAql9nRuFFWyk63U53 example@hkpanchani.dev"
}
```