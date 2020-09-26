FROM phaustin/base-image:sep23

USER ${NB_USER}

RUN mkdir -p ${HOME}/work/modtran_files

RUN echo "conda activate ${CONDA_ENV}" >> ${HOME}/.bashrc

WORKDIR ${HOME}/work

CMD ["/bin/bash"]

