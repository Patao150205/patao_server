#! /bin/bash
#Let's Encrypt証明書自動更新用

CERTBOT_CMD=/usr/bin/certbot
WEBSERVER_RESTART_CMD="docker-compose -f /home/patao-server/app/patao_server/docker-compose.prod.yaml restart"

echo "===== Update SSL Certfile (Let's Encrypt) ====="
echo "$(date) Update SSL Certfile start"

${CERTBOT_CMD} renew \
  --post-hook "${WEBSERVER_RESTART_CMD}"

RESULT_STATUS=$?

if [ $RESULT_STATUS = 0 ]; then
	echo '証明書の更新に成功しました。'
else
	echo '証明書の更新に失敗しました。'
fi

echo "$(date) Update SSL Certfile end"