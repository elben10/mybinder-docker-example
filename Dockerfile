FROM elben10/docker:18046e5b281148120f166ee643de0a82f317a231

# Make sure the contents of our repo are in ${HOME} 
COPY . ${HOME}

# Install conda deps
RUN conda env update -f environment.yml
