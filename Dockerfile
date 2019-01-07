FROM elben10/docker-jupyterlab:c97f4c97f2e43770fde93b5a911d7a55abd44b60

# Make sure the contents of our repo are in ${HOME} 
COPY . ${HOME}

# Install conda deps
RUN conda env update -f environment.yml
