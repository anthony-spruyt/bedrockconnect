FROM eclipse-temurin:17-jre
ARG VERSION="1.60"
LABEL org.opencontainers.image.title="BedrockConnect" \
      org.opencontainers.image.version=${VERSION} \
      org.opencontainers.image.source="https://github.com/anthony-spruyt/bedrockconnect" \
      org.opencontainers.image.licenses="GPL-3.0-only"
RUN mkdir -p /app
ADD https://github.com/Pugmatt/BedrockConnect/releases/download/${VERSION}/BedrockConnect-1.0-SNAPSHOT.jar /app
WORKDIR /app
EXPOSE 19132/udp
CMD ["java","-Xms512M","-Xmx512M","-jar","BedrockConnect-1.0-SNAPSHOT.jar","nodb=true","custom_servers=/app/custom_servers.json"]
