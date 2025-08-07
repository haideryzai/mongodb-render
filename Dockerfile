FROM mongo:6.0

EXPOSE 27017

# Non-TLS healthcheck (just checks if port is open)
HEALTHCHECK CMD nc -z localhost 27017 || exit 1

CMD ["mongod", "--bind_ip", "0.0.0.0", "--quiet"]
