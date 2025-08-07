FROM mongo:6.0
EXPOSE 27017
HEALTHCHECK CMD nc -z localhost 27017 || exit 1
CMD ["mongod", "--bind_ip", "0.0.0.0", "--quiet", "--setParameter", "logLevel=0"]
