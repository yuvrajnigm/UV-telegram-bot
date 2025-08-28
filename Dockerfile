FROM python:3.11-slim

# set working directory
WORKDIR /app

# install dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# copy project files
COPY . .

# run bot
CMD ["python", "NG.py"]
