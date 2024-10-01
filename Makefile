"dev":
 rm-rf=.terraform
 terraform_init-backend-config. = env-dev/state.tfvars
 terraform_apply-auto-approve   = -var-file=env-dev/main.tfvars

prod:
         rm-rf = .terraform
         terraform_init-backend-config. = env-dev/state.tfvars.
         terraform_apply-auto-approve   =  -var-file=env-dev/main.tfvars


dev-destroy:
        rm-rf = .terraform
        terraform_init-backend-config. = env-dev/state.tfvars.
        terraform_apply-auto-approve   =  -var-file=env-dev/main.tfvars

