# DockerZilla
Docker tools for easy life

Here's an interactive Bash script that will guide users through creating a Dockerfile step by step. This script:

✅ Asks for the base image (e.g., ubuntu, alpine, python, etc.)

✅ Prompts for package installations (e.g., curl, vim, python3, etc.)

✅ Allows adding a working directory

✅ Prompts for a command to run on container start

✅ Generates a Dockerfile dynamically

## How to Use

Save the script as create_dockerfile.sh.

Give execute permission:

sh
chmod +x create_dockerfile.sh
Run the script:

sh
Копировать
Редактировать
./create_dockerfile.sh
Follow the interactive prompts.

Check the generated Dockerfile.


Example Run
java
Копировать
Редактировать
Welcome to the Dockerfile Generator!
Enter the base image (e.g., ubuntu, alpine, python:3.9): ubuntu:20.04
Enter the packages to install (space-separated, or leave blank): curl vim
Enter the working directory inside the container (or leave blank for default): /app
Enter the command to run (e.g., python app.py, or leave blank): python3 server.py
Generating Dockerfile...
Dockerfile created successfully!
Generated Dockerfile
dockerfile
Копировать
Редактировать
FROM ubuntu:20.04
RUN apt-get update && apt-get install -y curl vim && rm -rf /var/lib/apt/lists/*
WORKDIR /app
CMD ["python3", "server.py"]

