FROM puzlcloud/pytorch:1.5-python3.7-gpu-jupyter
RUN pip install --upgrade pip
RUn pip install protobuf==3.19.0
RUN pip install opennmt-py==1.1.1
RUN pip install scons
ENV PATH=$PATH:"/home/ubuntu/.local/bin"
COPY ./start.sh  /start.sh

WORKDIR /
COPY . .
CMD /bin/bash start.sh
