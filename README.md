# techxchange-supply-chain-demo

Demo workspace for Terraform Policy supply chain checks. The module is pulled from the public registry, so it fails the `private_registry_only` policy. The AWS provider is 6.x, outside the approved `>= 4.0.0, < 6.0.0` range, so it fails `version_check`.
