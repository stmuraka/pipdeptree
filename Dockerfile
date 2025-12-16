FROM registry.access.redhat.com/ubi10/python-312-minimal
LABEL image.author.name="Shaun Murakami"
LABEL image.author.email="stmuraka@gmail.com"
RUN  python -m venv .venv; \
     . .venv/bin/activate; \
     pip install --upgrade pip; \
     pip install pipdeptree
COPY run.sh /root/run.sh
ENTRYPOINT ["/root/run.sh"]

