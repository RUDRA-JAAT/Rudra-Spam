FROM RUDRA-JAAT/Rudra-Spam

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip -y
RUN pip3 install -U pip
RUN mkdir /app/
WORKDIR /app/
COPY . /app/
RUN pip3 install -U -r requirements.txt
CMD python3 -m Rudra