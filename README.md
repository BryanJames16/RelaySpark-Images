# ⚡ RelaySpark Images
Collection of Dockerfile for compiling RelaySpark supported workflows. This repository aims to standardize the container images as base images used by RelaySpark for performing pipeline runs. Developers can still use their own custom images when running RelaySpark jobs.

## 🛠️ Building
1. Perform docker build for each `Dockerfile`.
2. Push to your target container registry.

## 🚗 Usage
1. Pull the container image.
2. Pull the RelaySpark jobs.
3. Run the RelaySpark jobs inside the container.

  **Note**: You can also use these container image within your CI/CD pipeline tool as base image when running commands.

## 📦 Contributing

Contributions are greatly appreciated and needed. Please feel free to open an issue, fork, and / or create a pull request.

## 📄 License

MIT License - Copyright (c) 2025 Bryan James
