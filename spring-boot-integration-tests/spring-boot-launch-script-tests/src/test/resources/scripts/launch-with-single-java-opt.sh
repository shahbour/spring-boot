source ./test-functions.sh
install_service
start_service
await_app http://127.0.0.1:8080/
curl -s http://127.0.0.1:8080/
