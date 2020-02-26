# terraform_ci-cd
- Terraform v0.11.13

## dockerコマンド
```
docker run \
   -e AWS_ACCESS_KEY_ID=<AWSのアクセスキー> \
   -e AWS_SECRET_ACCESS_KEY=<AWSの秘密鍵>\
   -v $(pwd):/terraform \
   -w /terraform \
   -it \
   --entrypoint=ash \
   hashicorp/terraform:0.11.13
