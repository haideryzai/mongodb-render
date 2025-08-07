FROM mongo:6.0

# Expose MongoDB port
EXPOSE 27017

# Use only mongod (disable telemetry and clients)
CMD ["mongod", "--bind_ip", "0.0.0.0", "--quiet"]
