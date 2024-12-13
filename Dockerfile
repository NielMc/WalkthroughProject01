FROM python:3.12-slim

WORKDIR /malaria

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY malaria .

ENV PORT 8000
ENV HOST 0.0.0.0
ENV PYTHONPATH=.

CMD [ "sh", "-c", "streamlit run --server.port ${PORT} --server.address ${HOST} /malaria/app_pages/app.py" ]