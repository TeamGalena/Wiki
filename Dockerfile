FROM squidfunk/mkdocs-material:latest AS builder

# install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# build the project
COPY docs docs
COPY mkdocs.yml .
RUN mkdocs build

FROM nginx:latest AS serve

EXPOSE 80

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=builder /docs/site /usr/share/nginx/html