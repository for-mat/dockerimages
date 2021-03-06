#!/bin/bash

for imagepath in $(cat ./imagepath.txt)
do
imagename=$(echo $imagepath | awk -F '/' '{print $NF}' | tr : -)
docker pull $imagepath

# push到阿里云仓库
docker tag $imagepath registry.cn-shanghai.aliyuncs.com/binlog/shang:$imagename
docker push registry.cn-shanghai.aliyuncs.com/binlog/shang:$imagename

# push到dockerhub
#docker tag $imagepath willdockerhub/$imagename
#docker push willdockerhub/$imagename
done


