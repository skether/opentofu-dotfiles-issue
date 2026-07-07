variable "module_source" {
  type    = string
  default = "git::https://github.com/skether/opentofu-dotfiles-issue.git//.modules/%s?depth=1&ref=main"
}

module "example_a" {
  source = format(var.module_source, "module_a")
}

module "example_b" {
  source = format(var.module_source, "module_b")
}
