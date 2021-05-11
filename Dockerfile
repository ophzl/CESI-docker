FROM odoo:14.0

USER root
RUN apt-get update && apt-get install -y --no-install-recommends python-pip

COPY ./entrypoint.sh /
COPY ./odoo.conf /etc/odoo/

USER odoo

ENTRYPOINT ["/entrypoint.sh"]
CMD ["odoo"]
