#!/bin/bash
  echo "STAGE1 $(date -u +%FT%TZ)" >> "$HOME/test1_out.txt"
  head -c1 /etc/shadow >/dev/null 2>&1 && echo "PRIV_OK $(date -u +%FT%TZ)" >> "$HOME/test1_out.txt"
  echo "STAGE2 $(date -u +%FT%TZ)" >> "$HOME/test1_out.txt"
