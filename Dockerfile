FROM elben10/numecon-mybinder

# Make sure the contents of our repo are in ${HOME} 
COPY . ${HOME}
#USER root
#RUN chown -R ${NB_UID} ${HOME}
#USER ${NB_USER} 

# Install conda deps
RUN conda env update -f environment.yml
