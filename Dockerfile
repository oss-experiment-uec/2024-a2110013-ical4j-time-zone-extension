FROM ubuntu:24.04

ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone
RUN apt update && apt upgrade -y

WORKDIR /artifact

# 必要なAPTパッケージを適当にインストール
RUN apt update && apt install -y less git vim gradle
#libcommons-lang3-java default-jdk 

# Gitリポジトリを展開しても良い
RUN git clone https://github.com/oss-experiment-uec/2024-a2110013-ical4j-time-zone-extension.git

#カレントディレクトリ
WORKDIR /artifact/2024-a2110013-ical4j-time-zone-extension

# Dockerfileを実行する場所からファイルをコピーする場合
# COPY . /artifact
