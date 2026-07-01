ARG BUILD_FROM
FROM $BUILD_FROM

# Устанавливаем Python, pip и зависимости
RUN apk add --no-cache python3 py3-pip py3-setuptools \
    && pip3 install --no-cache-dir rpi2home-assistant

# Создаем каталог для конфигурации
RUN mkdir -p /config

# Копируем скрипт запуска
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
