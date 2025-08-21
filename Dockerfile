# 베이스 이미지 지정
FROM openjdk:17-jdk-slim

# 작업 디렉토리 생성
WORKDIR /app

# JAR 파일 복사
ARG JAR_FILE=build/libs/*.jar
COPY build/libs/${JAR_FILE} app.jar

# 실행 명령
ENTRYPOINT ["java", "-jar", "app.jar"]
