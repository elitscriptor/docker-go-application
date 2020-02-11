# this is base image for our application image. fill free to change version based on your installed go version for more images see from https://hub.docker.com/_/golang
FROM golang:1.12.4

# It will create this Directory and set the Current Working Directory inside the container
WORKDIR /app

# Copy the source from the current directory to the Working Directory inside the container
COPY . .

# Build the Go app
RUN go build -o docker-go-app

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the executable
CMD ["./docker-go-app"]
