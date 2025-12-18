FROM astral/uv:python3.8-alpine

COPY . /MedImageInsights
WORKDIR /MedImageInsights

RUN wget https://huggingface.co/lion-ai/MedImageInsights/resolve/main/2024.09.27/vision_model/medimageinsigt-v1.0.0.pt -O /MedImageInsights/2024.09.27/vision_model/medimageinsigt-v1.0.0.pt
RUN python -V
RUN uv sync
RUN uv run fastapi_app.py

EXPOSE 8000
