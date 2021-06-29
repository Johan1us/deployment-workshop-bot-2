# https://hub.docker.com/r/rasa/rasa-sdk/tags
FROM rasa/rasa:2.7.1

COPY actions /app/actions
COPY requirements.txt /app/actions

USER root
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r /app/actions/requirements-actions.txt

USER 1001
CMD ["start", "--actions", "actions"]