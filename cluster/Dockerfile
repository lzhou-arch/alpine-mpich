FROM lzhouarch/mxnet-rpi:onbuild

CMD sh -c 'sudo ln -s /dev/null /dev/raw1394'; bash

# # ------------------------------------------------------------
# # Build MPI project
# # ------------------------------------------------------------

# Put all build steps and additional package installation here

# Note: the current directory is ${WORKDIR:=/project}, which is
# also the default directory where ${USER:=mpi} will SSH login to

# Copy the content of `project` directory in the host machine to 
# the current working directory in this Docker image
COPY project/ .
COPY dist_run.sh .
COPY local_run.sh .
RUN sudo chmod +x dist_run.sh
RUN sudo chmod +x local_run.sh

# Normal build command
RUN mpicc -o mpi_hello_world mpi_hello_world.c

# ####################
# For Docker beginner:

# After Docker syntax `RUN`, you can execute any command available in 
# the current shell of the image.

# To switch to root:    USER root
# To switch back to default user: USER ${USER}
