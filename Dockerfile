FROM python:2.7.9
#RUN pip install sixpack==2.3.1
COPY . /opt/sixpack/
RUN pip install /opt/sixpack
#RUN pip install -r /opt/sixpack/requirements.txt
ENTRYPOINT ["gunicorn", "--access-logfile", "-", "-b", "0.0.0.0:5000", "--worker-class=gevent"]
