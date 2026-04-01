# Use an official Python runtime as a parent image
FROM python:3.12.13-alpine3.22

# Set the working directory in the container
WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . .

# Run demo.py when the container launches
CMD ["python", "demo.py"]
#build docker file
#docker build -t my-app  .
#run docker file
#p


#  build---> test---> dockerize--->deploy