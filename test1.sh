 #!/bin/bash
  TS=$(date -u +%FT%TZ)
  echo "test1 v2 OK $TS"
  echo "test1 v2 OK $TS" >> "$HOME/test1_out.txt"
  echo "diag: cfg=$(env | wc -l) cwd=$(pwd) who=$(whoami)" >> "$HOME/test1_out.txt"
