# DockerZilla
Docker tools for easy life

### Here's an interactive Bash script that will guide users through creating a Dockerfile step by step. This script:

✅ Asks for the base image (e.g., ubuntu, alpine, python, etc.)

✅ Prompts for package installations (e.g., curl, vim, python3, etc.)

✅ Allows adding a working directory

✅ Prompts for a command to run on container start

✅ Generates a Dockerfile dynamically

## How to Use

Save the script as create_dockerfile.sh.

Give execute permission:
```console
sh
chmod +x create_dockerfile.sh
```
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



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Console Window</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #222;
        }
        .console-container {
            width: 400px;
            background-color: #333;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            overflow: hidden;
        }
        .console-header {
            background-color: #444;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            color: white;
        }
        .console-body {
            padding: 10px;
            background-color: black;
            color: green;
            font-family: monospace;
            min-height: 150px;
            white-space: pre-wrap;
        }
        .console-footer {
            padding: 10px;
            text-align: right;
            background-color: #444;
        }
        button {
            padding: 5px 10px;
            margin-left: 5px;
            border: none;
            background-color: #666;
            color: white;
            cursor: pointer;
            border-radius: 4px;
        }
        button:hover {
            background-color: #888;
        }
    </style>
</head>
<body>
    <div class="console-container">
        <div class="console-header">
            <span>Console</span>
            <div>
                <button onclick="copyConsole()">Copy</button>
                <button onclick="editConsole()">Edit</button>
            </div>
        </div>
        <div id="console-body" class="console-body" contenteditable="false">
            > Welcome to the console...
        </div>
        <div class="console-footer"></div>
    </div>

    <script>
        function copyConsole() {
            const consoleBody = document.getElementById("console-body");
            navigator.clipboard.writeText(consoleBody.innerText).then(() => {
                alert("Copied to clipboard");
            });
        }

        function editConsole() {
            const consoleBody = document.getElementById("console-body");
            consoleBody.contentEditable = consoleBody.contentEditable === "true" ? "false" : "true";
        }
    </script>
</body>
</html>
