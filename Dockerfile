FROM python:3.10
# Adding build tools to make yarn install work on Apple silicon / arm64 machines
EXPOSE 5000
WORKDIR /app
RUN pip install requirements.txt
COPY . .
CMD ["flask","run", "--host","0.0.0.0"]