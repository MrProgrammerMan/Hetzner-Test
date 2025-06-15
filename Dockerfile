# Use the official Rust image to build the app
FROM rust:latest

# Set the working directory inside the container
WORKDIR /app

# Copy your source code into the container
COPY . .

# Build the app in release mode
RUN cargo build --release

# Expose the port your app listens on
EXPOSE 3000

# Run the compiled binary
CMD ["./target/release/dotest"]
