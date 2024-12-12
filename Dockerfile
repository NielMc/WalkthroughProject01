FROM python:3.12-slim

WORKDIR /WalkthroughProject01

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY WalkthroughProject01 .

ENV PORT 8000
ENV HOST 0.0.0.0

CMD [ "sh", "-c", "streamlit run --server.port ${PORT} --server.address ${HOST} /WalkthroughProject01/app_pages/app.py" ]