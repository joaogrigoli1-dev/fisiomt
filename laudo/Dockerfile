FROM nginx:alpine
ARG COOLIFY_URL=https://laudo.fisiomt.com.br
ARG COOLIFY_FQDN=laudo.fisiomt.com.br
ARG COOLIFY_BRANCH=main
ARG COOLIFY_RESOURCE_UUID=rc8gwc0c008008sg8c88gos0
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY . /usr/share/nginx/html
# Preservar o relatorio-clinico original antes de qualquer troca
RUN cp /usr/share/nginx/html/relatorio-clinico.html /usr/share/nginx/html/relatorio-clinico-original.html
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 80
ENTRYPOINT ["/entrypoint.sh"]
