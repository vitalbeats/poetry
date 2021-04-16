FROM python:3.7.4-alpine
RUN apk add --no-cache --virtual .build-deps gcc g++ make musl-dev curl zlib-dev jpeg-dev libxml2-dev libxslt-dev freetype-dev mupdf-dev tzdata alpine-conf
ENV C_INCLUDE_PATH $C_INCLUDE_PATH:/usr/include/freetype2
RUN python -m pip install --upgrade pip
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
ENV PATH /root/.poetry/bin:$PATH
RUN poetry config virtualenvs.create false
WORKDIR /app
COPY entry.sh /usr/local/bin/
ENTRYPOINT ["/usr/local/bin/entry.sh"]
