#FROM jupyter/scipy-notebook
FROM jupyter/base-notebook


LABEL maintainer="Fredrik Tarnell <frippe75@gmail.com>"

# Install HPE Syngery 
RUN pip install hpOneView

# Moving back from scipy->base notebook image requires to install pandas for nicer tables
RUN conda install pandas

# Adding support for variable within markdown cells
#RUN pip install jupyter_nb_contrib_nbextensions
RUN conda install -c conda-forge jupyter_contrib_nbextensions
RUN jupyter contrib nbextension install --user
RUN jupyter nbextension enable python-markdown/main
RUN jupyter nbextension enable codefolding/main

# Adding JSON pretty print support
RUN pip install pprint

# Adding Paramiko (ssh support)
RUN pip install paramiko

# Ansible Kernel 
#RUN pip install ansible-kernel
#RUN python -m ansible_kernel.install

# HPE Ansible modules
#USER root
#RUN git clone https://github.com/HewlettPackard/oneview-ansible.git /usr/local/oneview-ansible
#ENV ANSIBLE_LIBRARY=/usr/local/oneview-ansible/library \
#    ANSIBLE_MODULE_UTILS=/usr/local/oneview-ansible/library/module_utils/

RUN fix-permissions /home/jovyan/work
