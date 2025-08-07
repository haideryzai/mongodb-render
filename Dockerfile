FROM mongo:6.0

EXPOSE 27017

# Healthcheck to prevent Render from doing HTTPS probing
HEALTHCHECK --interval=10s --timeout=5s --start-period=5s CMD mongo --eval "db.adminCommand('ping')" || exit 1

CMD ["mongod", "--bind_ip", "0.0.0.0"]
