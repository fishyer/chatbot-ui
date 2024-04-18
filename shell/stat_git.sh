#!/bin/sh
# This script will be run before every commit.

# 获取总git提交次数
commit_count=$(git rev-list --all --count)

# 获取当前日期时间，格式为：2024-04-17 19:09:04
commit_time=$(date +'%Y-%m-%d %H:%M:%S')

# 将commit_count和commit_time写入commit.yaml配置文件
echo "commit_count: $commit_count" > commit.yaml
echo "commit_time: $commit_time" >> commit.yaml

# Add commit.yaml if it's not already staged
git add commit.yaml 
