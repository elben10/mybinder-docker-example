FROM jupyter/scipy-notebook

# Make sure the contents of our repo are in ${HOME} 
COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
