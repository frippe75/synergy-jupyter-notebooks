FROM jupyter/scipy-notebook


LABEL maintainer="Fredrik Tarnell <frippe75@gmail.com>"

# Install HPE Syngery 
RUN pip install hpOneView

# Adding support for variable within markdown cells
#RUN pip install jupyter_nb_contrib_nbextensions
RUN conda install -c conda-forge jupyter_contrib_nbextensions
RUN jupyter contrib nbextension install --user
RUN jupyter nbextension enable python-markdown/main

RUN fix-permissions /home/jovyan/work
