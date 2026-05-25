#!/bin/bash
(envsubst < wrangler.template.toml > wrangler.toml) \
  && cd ../frontend && pnpm i && pnpm build:pages \
  && cd ../worker && pnpm run build
