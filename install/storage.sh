AVAILABLE_DBS=("MySQL" "Redis" "PostgreSQL")
SELECTED_DBS="MySQL,Redis"
dbs=$(gum choose "${AVAILABLE_DBS[@]}" --no-limit --selected "$SELECTED_DBS" --height 5 --header "Select docker storage")

if [[ -n "$dbs" ]]; then
  for db in $dbs; do
    case $db in
    MySQL)
      source $OMARA_PATH/shared/gum-spinner.sh "sudo docker run -d --restart unless-stopped -p 127.0.0.1:3306:3306 --name=mysql9 -e MYSQL_ROOT_PASSWORD= -e MYSQL_ALLOW_EMPTY_PASSWORD=true mysql:9.0" "Starting mysql9 container..."
      ;;
    Redis)
      source $OMARA_PATH/shared/gum-spinner.sh "sudo docker run -d --restart unless-stopped -p 127.0.0.1:6379:6379 --name=redis7 redis:7" "Starting redis7 container..."
      ;;
    PostgreSQL)
      source $OMARA_PATH/shared/gum-spinner.sh "sudo docker run -d --restart unless-stopped -p 127.0.0.1:5432:5432 --name=postgres16 -e POSTGRES_HOST_AUTH_METHOD=trust postgres:16" "Starting postgres16 container..."
      ;;
    esac
  done
fi
