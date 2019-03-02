FROM jupyter/scipy-notebook


LABEL maintainer="Fredrik Tarnell <frippe75@gmail.com>"

# Install HPE Syngery 
RUN pip install hpOneView

# Adding support for variable within markdown cells
#RUN pip install jupyter_nb_contrib_nbextensions
RUN conda install -c conda-forge jupyter_contrib_nbextensions
RUN jupyter contrib nbextension install --user
RUN jupyter nbextension enable python-markdown/main

# Adding JSON pretty print support
RUN pip install pprint

# Ansible Kernel 
RUN pip install ansible-kernel
RUN python -m ansible_kernel.install

# HPE Ansible modules
USER root
RUN git clone https://github.com/HewlettPackard/oneview-ansible.git /usr/local/oneview-ansible
ENV ANSIBLE_LIBRARY=/usr/local/oneview-ansible/library \
    ANSIBLE_MODULE_UTILS=/usr/local/oneview-ansible/library/module_utils/

RUN fix-permissions /home/jovyan/work
