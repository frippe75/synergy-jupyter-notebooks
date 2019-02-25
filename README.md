# Synergy Jupyter Notebooks
Showcase Synergy/Oneview automation via Jupyter Notebooks

# Quickstart

Run all the scripts to setup Docker, build the docker image with all requierd dependencies and run a docker container with Jupyter Notebook and access to a few demo notebooks to get you started.

```
# reuired yum packages
01-install-yum-dependencies.sh

# build the image
02-docker-build.sh

# run the container
03-fireup-jupyter-notebook.sh

# open firewall
firewall-cmd --zone=public --permanent --add-port=8888/tcp

# find the auth token for browser access
docker logs syn-notebook | grep token
```

## 
