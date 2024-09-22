FROM squidfunk/mkdocs-material:latest AS builder

ENV CI=true

# install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# build the project
ARG repo_url
ENV REPO_URL=repo_url

ARG site_url
ENV SITE_URL=site_url

COPY docs docs
COPY mkdocs.yml .
RUN mkdocs build

FROM nginx:latest AS serve

EXPOSE 80

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=builder /docs/site /usr/share/nginx/html