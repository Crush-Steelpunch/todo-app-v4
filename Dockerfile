FROM python:latest
WORKDIR /app
ENV DATABASE_URI=sqlite:///docker.db
ENV SECRET_KEY=4137cea2-0d55-4321-926f-943b9a19f4e2
COPY application /app/application
COPY app.py create.py requirements.txt /app/
RUN pip install -r requirements.txt
RUN python3 create.py
ENTRYPOINT ["python3", "app.py"]

