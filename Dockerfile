FROM ubuntu:latest

ENV TZ="Asia/Tokyo"
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install texlive texlive-lang-japanese texlive-luatex texlive-latex-extra -y
RUN wget https://github.com/jgm/pandoc/releases/download/2.14.0.3/pandoc-2.14.0.3-1-amd64.deb
RUN dpkg -i pandoc-2.14.0.3-1-amd64.deb

CMD ["/bin/bash"]
