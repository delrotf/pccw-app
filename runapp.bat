./mvnw -ntp verify -DskipTests -Pprod jib:dockerBuild
docker compose -f src/main/docker/app.yml up -d