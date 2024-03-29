FROM cytomineuliege/software-python3-base:v2.8.3-py3.8.12-slim

RUN pip install scikit-learn numpy tensorflow albumentations

RUN mkdir -p /app
ADD descriptor.json /app/descriptor.json
ADD run.py /app/run.py
ADD models.py /app/models.py
ADD utils.py /app/utils.py

ENTRYPOINT ["python", "/app/run.py"]