FROM python:3.7
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
ENV PATH /root/.poetry/bin:$PATH
WORKDIR /app
ENTRYPOINT ["poetry"]
