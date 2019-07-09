# 2019.07.manage-repos-with-terraform

Example repository for [mazgi.github.io/posts/2019.07/manage-multiple-github-repositories-with-terraform](https://mazgi.github.io/posts/2019.07/manage-multiple-github-repositories-with-terraform/)

## Recommends

- [direnv](https://github.com/direnv/direnv)
- [tfenv](https://github.com/tfutils/tfenv)

## Before use

Edit the `.envrc` file with `direnv edit .` command.

```
export TF_VAR_github_token="********"
```

## How to use

1. Install Terraform via tfenv.

```shellsession
$ tfenv install min-required
```

or

```shellsession
$ tfenv use min-required
```

2. `terraform init`

```shellsession
$ terraform init
```

3. `terraform apply`

```shellsession
$ terraform apply
```
