# AWS-CI-CD
GitHubActions/Ansibleによって自動でEC2にJavaをインストールする

## 概要
ワークフローによって、Terraformを使用してAWS上にEC2を構築
Ansibleによって、構築したEC2にJavaのインストールを行う

## 技術スタック
- Infra: AWS, Terraform
- CI/CD: GitHub Actions,Ansible
