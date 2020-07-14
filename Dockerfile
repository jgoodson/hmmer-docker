FROM ubuntu:20.04
RUN apt-get update && apt-get install -y wget build-essential
RUN wget http://eddylab.org/software/hmmer/hmmer-3.3.tar.gz
RUN tar xzf hmmer-3.3.tar.gz && cd hmmer-3.3 && ./configure --prefix /hmmer && make && make install && cd easel && make install
ENV PATH="/hmmer/bin:$PATH"
CMD ["/hmmer/bin/hmmsearch"] 
