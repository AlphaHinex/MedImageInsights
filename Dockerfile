FROM astral/uv:python3.8-alpine

COPY . /MedImageInsights
WORKDIR /MedImageInsights

RUN uv sync
RUN uv run fastapi_app.py

EXPOSE 8000
