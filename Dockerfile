FROM python:3.12-slim

WORKDIR /app_pages

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY app_pages .

ENV PORT 8000
ENV HOST 0.0.0.0

CMD [ "sh", "-c", "streamlit run --server.port ${PORT} --server.address ${HOST} /app_pages/app.py" ]