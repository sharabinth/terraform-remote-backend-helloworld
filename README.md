# Terraform Null Provider Hello World With Remote State

Terraform code to show the usage of Null Provider for Hello World using TFE remote state for storage.

TFE ```organisation``` and the ```workspace``` name are specified in the ```terraform``` block.

It uses the ```local-exec``` to print ```Hello World!```

## Usage

Make sure TFE User Token is created from the User Settings menu.  This is required to be input when ```terraform init``` is performed.

```
$ terraform fmt
$ terraform init
$ terraform apply
```
The state information can be found in TFE by checking the ```States``` tab for the given workspace.
