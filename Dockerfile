# Sử dụng image JDK 11 chính thức
FROM openjdk:17-alpine

# Tạo thư mục ứng dụng trong container
WORKDIR /app

# Sao chép file JAR vào thư mục làm việc trong container
COPY /target/HelloWorld-0.0.1-SNAPSHOT.jar /app/HelloWorld-0.0.1-SNAPSHOT.jar

# Chạy ứng dụng khi container khởi động
ENTRYPOINT ["java", "-jar", "HelloWorld-0.0.1-SNAPSHOT.jar"]
