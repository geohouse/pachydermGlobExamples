FROM ubuntu

# The apt-get -y flag automatically answers 'yes' to all interactive prompts.
# Needed for the python installation, that otherwise includes an interactive
# prompt and that aborts otherwise when run in non-interactive mode like here.

RUN apt-get update -y \
    && apt-get install -y python3

COPY ./python_listGlobbedFiles_fruits_and_veg_named.py /python_listGlobbedFiles_fruits_and_veg_named.py

