FROM python:3.9.5
RUN apt-get update && apt-get install -y gcc g++ make curl zlib1g-dev libjpeg-dev libxml2-dev libxslt-dev libfreetype6-dev libmupdf-dev tzdata
ENV C_INCLUDE_PATH $C_INCLUDE_PATH:/usr/include/freetype2
RUN python -m pip install --upgrade pip
RUN pip install poetry
ENV PATH /root/.poetry/bin:$PATH
RUN poetry config virtualenvs.create false && poetry config virtualenvs.in-project false
WORKDIR /app
COPY entry.sh /usr/local/bin/
ENTRYPOINT ["/usr/local/bin/entry.sh"]
