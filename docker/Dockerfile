FROM jupyter/datascience-notebook:latest

USER root

RUN apt-get -y update && \
    apt-get install libpq-dev ssh git -yq --no-install-recommends && \
    apt-get clean

RUN chown jovyan:users /tmp/ && \
    fix-permissions /tmp/ && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

USER jovyan

WORKDIR /home/jovyan/

COPY requirements.txt .

RUN pip install --upgrade pip \
    && pip install --ignore-installed -r requirements.txt
    # && python -m spacy download en_core_web_lg