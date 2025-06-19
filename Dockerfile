FROM ghcr.io/astral-sh/uv:python3.13-alpine

WORKDIR /app 

COPY pyproject.toml .
COPY uv.lock .

RUN uv sync

# add virtualenv on path 
ENV PATH="/app/.venv/bin:$PATH"

COPY . .

CMD [ "uvicorn", "main:app", "--host=0.0.0.0", "--port=8080" ]


