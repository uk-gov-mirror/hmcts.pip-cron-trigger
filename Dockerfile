ARG APP_INSIGHTS_AGENT_VERSION=3.4.14
FROM hmctsprod.azurecr.io/base/java:21-distroless

COPY lib/applicationinsights.json /opt/app/
COPY build/libs/pip-cron-trigger.jar /opt/app/

EXPOSE 8050
CMD [ "pip-cron-trigger.jar" ]
