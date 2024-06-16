# Sử dụng image WordPress chính thức với PHP-FPM trên Alpine Linux
FROM wordpress:6.5.2-fpm-alpine

# Thiết lập quyền sở hữu và quyền truy cập cho thư mục /var/www/html
RUN chown -R ec2-user:ec2-user /var/www/html && \
    find /var/www/html -type d -exec chmod 755 {} \; && \
    find /var/www/html -type f -exec chmod 644 {} \;

# Đặt người dùng chạy các lệnh tiếp theo và các container
USER ec2-user

# Đặt entrypoint và CMD
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["php-fpm"]
