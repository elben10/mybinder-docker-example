FROM elben10/docker-jupyterlab:b245397c2540f1c543eebe129532c8a21cf149f9

# Make sure the contents of our repo are in ${HOME} 
COPY . ${HOME}

# Install conda deps
RUN conda env update -f environment.yml
