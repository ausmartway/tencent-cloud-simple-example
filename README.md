# tencent-cloud-simple-example
用terrform在腾讯云上实施一个简单lab的例子。

使用方法：

1.安装terraform。https://learn.hashicorp.com/terraform/getting-started/install.html

2.去腾讯云console生成一套云API Key，并设置环境变量。https://www.terraform.io/docs/providers/tencentcloud/index.html

3.git clone git@github.com:ausmartway/tencent-cloud-simple-example.git

4.cd tencent-cloud-simple-example/first-example

4.terraform init

5.terraform plan

6.terraform apply     //如果看到internal error，可以用：terraform apply -parallelism=1 来避免系统API过忙造成的错误。
7.terraform destroy   //如果看到internal error，可以用：terraform apply -parallelism=1 来避免系统API过忙造成的错误。
