# This Dockerfile is only intended to run a local preview of the theme
# See the README for a Dockerfile that would be better suited to using in production

FROM quay.io/keycloak/keycloak:latest AS base

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

# Recommended. Allows you to save configuration between restarts so you don't have to keep reselecting the theme
# Install postgres on macOS with: brew install postgresql@17
# Then run: psql -U postgres -c 'create database "bluedot-keycloak-theme";'
ENV KC_DB=postgres
# If you're running into JDBC connection issues, try replacing "host.docker.internal" with the IP returned by `ip route get 1.1.1.1` from colima

COPY ./dist/bluedot-keycloak-theme.jar /opt/keycloak/providers

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
CMD [ "start-dev" ]
