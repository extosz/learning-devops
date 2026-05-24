#!/bin/bash
# Принимает путь к лог-файлу первым аргументом
# Выводит топ-5 IP по числу запросов
set -e
LOG_FILE="${1:-access.log}"
if [ ! -f "$LOG_FILE" ]; then
    echo "Файл $LOG_FILE не найден" >&2
    exit 1
fi
awk '{print $2}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -5\



