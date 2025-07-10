# assessment_project
The docker image is available [here](https://hub.docker.com/r/campbellesoup/assessment_project).

Run the project using the Docker image from Docker Hub: 
```
docker pull campbellesoup/assessment_project:latest
docker run -p 3000:3000 campbellesoup/assessment_project
```
Then open your browser and go to:  http://localhost:3000

## Stopping the server on Windows
If Ctrl+C does not stop the Rails server:

Open a new terminal, run:

```
docker ps
```
Find the container ID for the running container, then:
```
docker stop <container_id>
```
