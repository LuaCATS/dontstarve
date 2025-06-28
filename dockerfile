FROM python

WORKDIR /opt/

RUN apt update && apt install git make g++ ninja-build -y

RUN git clone --recurse-submodules https://github.com/LuaLS/lua-language-server.git

WORKDIR /opt/lua-language-server

RUN sh -c ./make.sh

ENV PATH=/opt/lua-language-server/bin:$PATH
ENV LUALS_ROOT=/opt/lua-language-server

