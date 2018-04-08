FROM lzhouarch/mxnet-rpi:mpi

USER root
RUN mkdir -p /var/run/sshd

ARG USER=mpi
ENV USER ${USER}
ENV USER_HOME /home/${USER}

USER ${USER}

RUN cd ${USER_HOME}/mxnet/python && \
    pip install --upgrade pip && \
    sudo pip install -e . && \
    sudo ln -s /dev/null /dev/raw1394

