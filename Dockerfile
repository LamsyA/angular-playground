# Use the official Deno Docker image as the base image
FROM denoland/deno:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the local code to the container's working directory
COPY . .

# Allow network access (you may adjust this based on your app's requirements)
EXPOSE 8000

# Specify the command to run your Deno app
# CMD ["deno", "run", "--allow-net", "app.ts"]
