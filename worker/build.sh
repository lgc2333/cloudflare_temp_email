#!/bin/bash
cd ../frontend && pnpm i && pnpm build:pages \
  && cd ../worker && pnpm run build \
  && (envsubst < wrangler.template.toml > wrangler.toml)
