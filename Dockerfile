FROM rhub/ubuntu-gcc-release

RUN apt-get update -y
RUN apt-get install -y git build-essential cmake clang libssl-dev vim

WORKDIR /usr/home/src

# install renv
ENV RENV_VERSION 0.16.0
RUN R -e "install.packages('remotes', repos = c(CRAN = 'https://cloud.r-project.org'))"
# RUN R -e "remotes::install_github('rstudio/renv@${RENV_VERSION}')"
# ENV RENV_PATHS_LIBRARY renv/library
# RUN R -e "renv::restore()"
