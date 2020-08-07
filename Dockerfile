FROM jupyter/scipy-notebook:1a66dd36ff82

LABEL maintainer="Patrick Windmiller <windmiller@pstat.ucsb.edu>"

USER $NB_UID

RUN jupyter labextension update jupyterlab_bokeh && \
    jupyter labextension update @jupyter-widgets/jupyterlab-manager && \
    jupyter labextension install jupyter-matplotlib && \
    jupyter labextension update --all
