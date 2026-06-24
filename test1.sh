#!/bin/bash
  # continuous-deploy check
  TS=$(date -u +%FT%TZ)
  echo "test1 v1 OK $TS"                         
  echo "test1 v1 OK $TS" >> "$HOME/test1_out.txt" # 
