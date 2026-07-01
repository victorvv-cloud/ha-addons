# Используем образ, указанный в config.yaml
ARG BUILD_FROM
FROM $BUILD_FROM

# Копируем и запускаем скрипт run.sh
COPY run.sh /
RUN chmod a+x /run.sh
CMD [ "/run.sh" ]
