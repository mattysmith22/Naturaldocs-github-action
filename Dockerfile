FROM mono:6

RUN apt update
RUN apt install -y wget unzip

WORKDIR /opt
RUN wget https://www.naturaldocs.org/download/natural_docs/2.2/Natural_Docs_2.2.zip
RUN unzip Natural_Docs_2.2.zip
RUN rm Natural_Docs_2.2.zip

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
