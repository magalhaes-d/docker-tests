FROM python:3.8-alpine

RUN apk update && apk add --no-cache git

WORKDIR /app

RUN git config --global user.name 'github-actions[bot]' && \
    git config --global user.email 'github-actions[bot]@users.noreply.github.com'

COPY . .

COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]
