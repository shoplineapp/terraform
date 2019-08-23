# Bitbucket Pipeline aws-cli

## Build

- shopline-test

```
docker build -t 990090895087.dkr.ecr.ap-southeast-1.amazonaws.com/shopline/pipeline-aws-cli:1.1.3 . --no-cache
docker tag 990090895087.dkr.ecr.ap-southeast-1.amazonaws.com/shopline/pipeline-aws-cli:1.1.3 990090895087.dkr.ecr.ap-southeast-1.amazonaws.com/shopline/pipeline-aws-cli:latest
docker push 990090895087.dkr.ecr.ap-southeast-1.amazonaws.com/shopline/pipeline-aws-cli:1.1.3
docker push 990090895087.dkr.ecr.ap-southeast-1.amazonaws.com/shopline/pipeline-aws-cli:latest
```

- shopline

```
docker tag 990090895087.dkr.ecr.ap-southeast-1.amazonaws.com/shopline/pipeline-aws-cli:1.1.3 332947256684.dkr.ecr.ap-southeast-1.amazonaws.com/shopline/pipeline-aws-cli:1.1.3
docker tag 332947256684.dkr.ecr.ap-southeast-1.amazonaws.com/shopline/pipeline-aws-cli:1.1.3 332947256684.dkr.ecr.ap-southeast-1.amazonaws.com/shopline/pipeline-aws-cli:latest
docker push 332947256684.dkr.ecr.ap-southeast-1.amazonaws.com/shopline/pipeline-aws-cli:1.1.3
docker push 332947256684.dkr.ecr.ap-southeast-1.amazonaws.com/shopline/pipeline-aws-cli:latest
```

## Include package

- groff
- less
- python
- py-pip
- bash
- jq
- openssl
- tzdata
- make
- git
- aws-cli 1.16.53
- terraform 0.11.11
- openssh-client
