FROM python:3.8

# Organize the folder in the container and it will be our start enterpoint
WORKDIR /fastapi-app

COPY requirements.txt .

# Installing the dependencies
RUN pip install -r requirements.txt

# Copy the folder "./app" from our machine to "./app" folder inside the container 
COPY ./app ./app

CMD [ "python" , "./app/main.py"]