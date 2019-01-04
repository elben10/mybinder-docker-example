FROM elben10/docker-jupyterlab:bec8945caaa8420e91fd0bd01f99008049d59568

# Make sure the contents of our repo are in ${HOME} 
COPY . ${HOME}

# Install conda deps
RUN conda env update -f environment.yml
