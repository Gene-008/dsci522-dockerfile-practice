# Start from the Jupyter team's minimal notebook image on quay.io
FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

#copying conda lock file into container
COPY conda-linux-64.lock /tmp/conda-linux-64.lock

#running conda package
RUN conda update -n base -c conda-forge conda && \
    conda create -n dsci522-env --file /tmp/conda-linux-64.lock && \
    conda clean -afy