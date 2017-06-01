source ./test-functions.sh
install_service
echo 'JAVA_OPTS=-Dserver.port=8080' > /test-service/spring-boot-app.conf
start_service
await_app http://127.0.0.1:8080/
curl -s http://127.0.0.1:8080/
