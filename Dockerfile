FROM rhub/ubuntu-gcc-release:latest

USER root
ENV DEBIAN_FRONTEND=noninteractive

RUN apt install libssl-dev libxml2-dev

WORKDIR /work/autqr

COPY . .

ENV RENV_VERSION 0.16.0
RUN R -e "install.packages('remotes', repos = c(CRAN = 'https://cloud.r-project.org'))"
RUN R -e "remotes::install_github('rstudio/renv@${RENV_VERSION}')"
ENV RENV_PATHS_LIBRARY renv/library
RUN R -e "renv::restore()"
