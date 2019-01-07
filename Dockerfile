FROM elben10/docker-jupyterlab:b245397c2540f1c543eebe129532c8a21cf149f9

# Make sure the contents of our repo are in ${HOME} 
COPY . ${HOME}

user root
RUN ln -s /usr/lib/x86-64-linux-gnu/libLLVM.6.0.so /usr/lib/x86-64-linux-gnu/libLLVM.so
user ${NB_USER}

# Install conda deps
RUN conda env update -f environment.yml && \
    conda install --quiet --yes -c conda-forge -c QuantStack -c krinsman \
      'ijavascript' \
      'llvm' \
      'go' \
      'pkg-config' && \
      pip install bash_kernel && \
      python -m bash_kernel.install && \
      julia -e 'import Pkg; Pkg.update(); Pkg.add("IJulia")' && \
      go get -u github.com/gopherdata/gophernotes && \
      mkdir -p ~/.local/share/jupyter/kernels/gophernotes && \
      cp $GOPATH/src/github.com/gopherdata/gophernotes/kernel/* ~/.local/share/jupyter/kernels/gophernotes
