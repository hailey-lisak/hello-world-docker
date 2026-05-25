#This means: start with an existing Docker image that
#has Python 3.12 installed. (gives your container Python)
FROM python:3.12

#This means: inside the container, create/use a folder called /app
#and workd from there. (basically the container's current directory)
#similar to doing cd /app
WORKDIR /app

#This means: copy everything from your current project folder on 
#your computer into the current folder inside the container.
#The first '.' means current folder on YOUR computer.
#The second '.' means current folder INSIDE the container (/app because of WORKDIR)
#So, if project contains app.py and README.md, Docker copies those into the container.
COPY . .

#This means: When the container starts, run this command.
#Equivalent to typing python3 app.py in the terminal.
#So when you run "docker run hello-world-docker",
#Docker will start the container, run python3 app.py, and your Python code executes.
CMD ["python3", "app.py"]