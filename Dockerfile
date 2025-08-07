FROM mongo:6.0

# Expose the MongoDB port
EXPOSE 27017

# Command to run MongoDB and allow external access
CMD ["mongod", "--bind_ip", "0.0.0.0"]
