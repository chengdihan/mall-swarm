# 该镜像需要依赖的基础镜像
FROM openjdk:8-jdk-alpine
# 将当前目录下的jar包复制到docker容器的/目录下
ADD target/mall-auth-1.0-SNAPSHOT.jar /mall-auth-1.0-SNAPSHOT.jar
# 运行过程中创建一个mall-tiny-docker-file.jar文件
#RUN bash -c 'touch /mall-auth-1.0-SNAPSHOT.jar'
# 声明服务运行在8401端口
EXPOSE 8401
# 指定docker容器启动时运行jar包
ENTRYPOINT ["java", "-jar","/mall-auth-1.0-SNAPSHOT.jar"]
# 指定维护者的名字
MAINTAINER tc