FROM zachmullen/vtkpythonpackage

MAINTAINER Zach Mullen <zach.mullen@kitware.com>

RUN pip install click

COPY ./preprocess /preprocess_scripts

ENTRYPOINT ["python", "/preprocess_scripts/process_volume.py"]
