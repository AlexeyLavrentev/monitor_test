# Monitor Test Process

Этот проект предназначен для мониторинга процесса `test` в Linux. 

## Установка
1. Скопируйте `scripts/monitor_test.sh` в `/usr/local/bin`.
2. Сделайте скрипт исполняемым: chmod +x /usr/local/bin/monitor_test.sh
3. Перенесите файлы `systemd/monitoring.service` в `/etc/systemd/system/`.
4. Перезагрузите конфигурацию systemd: sudo systemctl daemon-reload
5. Активируйте и запустите службу: sudo systemctl enable monitoring.service && sudo systemctl start monitoring.service

## Логи
Логи находятся в `/var/log/monitoring.log`.

## Проверка работы
1. Проверьте статус таймера: sudo systemctl status monitoring.service
2. Убедитесь, что скрипт работает корректно, запустив его вручную: bash /usr/local/bin/monitor_test.sh
