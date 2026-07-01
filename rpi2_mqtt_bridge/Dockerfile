ARG BUILD_FROM
FROM $BUILD_FROM

# Устанавливаем Python и pip
RUN apk add --no-cache python3 py3-pip

# Устанавливаем rpi2home-assistant
RUN pip3 install --no-cache-dir rpi2home-assistant

# Копируем скрипт запуска
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
