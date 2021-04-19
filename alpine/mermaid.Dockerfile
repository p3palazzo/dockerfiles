ARG base_tag="edge"
FROM pandoc/alpine-crossref:${base_tag}

# NOTE: `libsrvg`, pandoc uses `rsvg-convert` for working with svg images.
# NOTE: to maintainers, please keep this listing alphabetical.
RUN apk --no-cache add npm \
  && npm install mermaid-filter

WORKDIR /data
