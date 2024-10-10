# Terraform-tamplate

## 使い方

[tfenv](https://github.com/tfutils/tfenv)をインストールします。ルートディレクトリの`.terraform-version`によってクライアントバージョンが自動的に決定します。
[tflint](https://github.com/terraform-linters/tflint)をインストールします。

`envs`配下の環境毎のディレクトリで下記コマンドを実行します。

``` HCL
terraform init
terraform plan
terraform apply
```

## 開発方針

[Terraform Registry](https://registry.terraform.io/namespaces/terraform-aws-modules)のモジュールを使用する事を優先して検討してください。

<!-- BEGIN_TF_DOCS -->

<!-- END_TF_DOCS -->