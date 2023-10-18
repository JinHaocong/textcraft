FROM python:3.10

WORKDIR /usr/src/app

COPY . .

RUN pip install --no-cache-dir -e . 

RUN pip install -r requirements.txt

RUN chmod +x ./start.sh

CMD ["./start.sh"]
