FROM python:3.8.19-bookworm

COPY . /MedImageInsights
WORKDIR /MedImageInsights

RUN python -V
RUN pip install uv
RUN uv --version
RUN uv python list

RUN uv sync
RUN uv run fastapi_app.py

EXPOSE 8000
