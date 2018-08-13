# Bitbucket Pipeline aws-cli

## Build

- shopline-test

```
docker build -t 990090895087.dkr.ecr.ap-southeast-1.amazonaws.com/shopline/pipeline-aws-cli:1.1.1 .
docker tag 990090895087.dkr.ecr.ap-southeast-1.amazonaws.com/shopline/pipeline-aws-cli:1.1.1 990090895087.dkr.ecr.ap-southeast-1.amazonaws.com/shopline/pipeline-aws-cli:latest
docker push 990090895087.dkr.ecr.ap-southeast-1.amazonaws.com/shopline/pipeline-aws-cli:1.1.1
docker push 990090895087.dkr.ecr.ap-southeast-1.amazonaws.com/shopline/pipeline-aws-cli:latest
```

- shopline

```
docker tag 990090895087.dkr.ecr.ap-southeast-1.amazonaws.com/shopline/pipeline-aws-cli:1.1.1 332947256684.dkr.ecr.ap-southeast-1.amazonaws.com/shopline/pipeline-aws-cli:1.1.1
docker tag 332947256684.dkr.ecr.ap-southeast-1.amazonaws.com/shopline/pipeline-aws-cli:1.1.1 332947256684.dkr.ecr.ap-southeast-1.amazonaws.com/shopline/pipeline-aws-cli:latest
docker push 332947256684.dkr.ecr.ap-southeast-1.amazonaws.com/shopline/pipeline-aws-cli:1.1.1
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
- git
- aws-cli 1.15.76
- terraform 0.11.7-r0
- openssh-client
