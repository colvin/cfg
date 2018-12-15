FROM python:PYTHON_VERSION

COPY requirements .
RUN pip install --upgrade pip\
	&& pip install -r requirements

CMD [ "bpython" ]
