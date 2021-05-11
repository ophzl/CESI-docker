FROM odoo:14.0

USER root
RUN apt-get update && apt-get install -y --no-install-recommends python-pip

COPY ./entrypoint.sh /
COPY wait_for_psql.py /usr/local/bin/wait_for_psql.py

USER odoo

ENTRYPOINT ["/entrypoint.sh"]
