#!/bin/bash

# Проверка, запущен ли процесс test
if pgrep "test" > /dev/null; then
    # Если сервер мониторинга доступен
    if curl -s --head "https://test.com/monitoring/test/api" | grep "200 OK" > /dev/null; then
        curl -s "https://test.com/monitoring/test/api" > /dev/null
    else
        echo "$(date) Сервер мониторинга недоступен." >> /var/log/monitoring.log
    fi
else
    echo "$(date) Процесс test не запущен." >> /var/log/monitoring.log
fi