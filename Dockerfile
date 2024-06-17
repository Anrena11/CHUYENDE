# Sử dụng Amazon Linux 2 làm base image
FROM amazonlinux:2

# Cài đặt các gói cần thiết, bao gồm libcrypt
RUN yum update -y \
    && yum install -y libcrypt \
    && yum clean all
