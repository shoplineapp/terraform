FROM alpine:3.19.1

ARG TERRAFORM_VERSION="1.7.3"
ENV TERRAFORM_VERSION=$TERRAFORM_VERSION

RUN \
  mkdir -p /aws && mkdir -p ~/.ssh && \
  echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
  apk update && apk -Uuv add groff less python3 py-pip bash jq openssl tzdata make zip curl aws-cli \
    git wget unzip openssh-client && \
  wget -q -O /terraform.zip "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip" && \
  unzip /terraform.zip -d /bin && \
  apk --purge -v del py-pip wget unzip && \
  rm /var/cache/apk/* /terraform.zip

WORKDIR /aws
