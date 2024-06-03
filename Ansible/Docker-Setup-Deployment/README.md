# Docker Setup and Java Application Deployment

This Ansible playbook automates the setup of Docker on multiple hosts and manages the deployment of a Java application within Docker containers.

## Tasks Overview:

1. **Ensure Docker Installation:**
   - Checks if Docker is already installed on all hosts.
   - Updates the apt package index if Docker is not installed.
   - Installs required packages for Docker installation.
   - Adds Docker's official GPG key.
   - Sets up the Docker stable repository.
   - Installs Docker.

2. **Add User to Docker Group:**
   - Adds the `vm3` user to the Docker group on the `vm3` host to allow Docker commands without sudo.

3. **Start Docker Service:**
   - Ensures that the Docker service is started on all hosts and specifically on `vm3`.

4. **Copy Directory Contents:**
   - Ensures that the destination directory exists on `vm3`.
   - Copies directory contents from `vm1` to `vm3`, particularly from `/home/vm1/depi/docker/java-application/` to `/home/vm3/depi/docker/java-application/`.

5. **Build Docker Image:**
   - Checks if the Dockerfile exists in `/home/vm3/depi/docker/java-application/`.
   - Builds a Docker image named `consumer` using the Dockerfile.
   - Displays the Docker build output for diagnostics.

6. **Run Docker Container:**
   - Runs a Docker container named `sharara` based on the `consumer` image.
   - Mounts the `/home/vm3/depi/docker/java-application/` directory to `/app` within the container.

## Usage:

1. Clone this repository to your local machine.
2. Customize the playbook according to your requirements (e.g., modify hostnames, file paths).
3. Run the playbook using Ansible.

## Requirements:

- Ansible installed on the control node.
- Passwordless SSH access to the target hosts.
- Docker installed on the target hosts.
