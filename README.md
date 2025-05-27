# dockerimages
pull docker images

示例   
需要拉取的镜像为threathunterx/nebula:v1.2.3
在imagepath.txt中添加记录
git add imagepath.txt
git commit -m 'xxx'
git push
 
然后就可以通过阿里云镜像库拉取镜像了
只pull镜像名   :  改为  -
docker pull registry.cn-shanghai.aliyuncs.com/binlog/shang:tiller-v2.14.3

拉取后改标签
docker tag registry.cn-shanghai.aliyuncs.com/binlog/shang:tiller-v2.14.3 gcr.io/kubernetes-helm/tiller:v2.14.3

删除原镜像名 
docker rmi registry.cn-shanghai.aliyuncs.com/binlog/shang:tiller-v2.14.3



 
 
