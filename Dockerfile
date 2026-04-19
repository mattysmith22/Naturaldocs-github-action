FROM debian:bookworm-slim

WORKDIR /opt
RUN apt-get update && apt-get install -y wget unzip libicu-dev && apt-get clean
RUN wget https://www.naturaldocs.org/download/natural_docs/2.4/Natural_Docs_2.4_Development_Release_2.Linux.x64.zip
RUN unzip Natural_Docs_*.zip && mv "Natural Docs" /opt/naturaldocs
RUN chmod +x /opt/naturaldocs/NaturalDocs
RUN rm Natural_Docs_*.zip

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
