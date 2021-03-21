FROM mono:6

RUN apt update
RUN apt install -y wget unzip

WORKDIR /opt
RUN wget https://www.naturaldocs.org/download/natural_docs/2.1/Natural_Docs_2.1.zip
RUN unzip Natural_Docs_2.1.zip
RUN rm Natural_Docs_2.1.zip

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]