FROM elben10/docker:4804581f32e098688e407aa484d6aa4fe6997225

# Make sure the contents of our repo are in ${HOME} 
COPY . ${HOME}

# Install conda deps
RUN conda env update -f environment.yml
