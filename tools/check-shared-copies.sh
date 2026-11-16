#!/usr/bin/env bash
# Checks that the files ROOTAi copies from other QMSROOT plugins still match their masters.
# Run before each ROOTAi release. Exits 1 if any copy differs.
#
# Masters are read from local clones when MA_DIR / AC_DIR are set:
#   MA_DIR=../qmsroot-mock-auditor AC_DIR=../qmsroot-audit-checklist tools/check-shared-copies.sh
# Otherwise they are downloaded from GitHub (main branch).
set -u
cd "$(dirname "$0")/.."
REFS=plugins/rootai-quality-regulatory/skills/rootai/references
MA_RAW=https://raw.githubusercontent.com/QMSROOT/qmsroot-mock-auditor/main
AC_RAW=https://raw.githubusercontent.com/QMSROOT/qmsroot-audit-checklist/main
fail=0
check() { # copy-name  local-dir-var  raw-base  master-path
  local copy="$REFS/$1" dir="$2" raw="$3" path="$4" master
  master=$(mktemp)
  if [ -n "$dir" ]; then cp "$dir/$path" "$master" 2>/dev/null || { echo "MISSING master: $dir/$path"; fail=1; return; }
  else curl -fsSL "$raw/$path" -o "$master" || { echo "CANNOT FETCH master: $raw/$path"; fail=1; return; }; fi
  # The copy carries one header line naming its source; compare everything after it.
  if tail -n +2 "$copy" | diff -q - "$master" >/dev/null; then echo "OK      $1"
  else echo "DIFFERS $1  (master: $path)"; fail=1; fi
  rm -f "$master"
}
check capa-methodology.md "${MA_DIR:-}" "$MA_RAW" skills/mock-auditor/references/capa-methodology.md
check grading.md          "${MA_DIR:-}" "$MA_RAW" skills/mock-auditor/references/grading.md
check question-bank.md    "${AC_DIR:-}" "$AC_RAW" skills/audit-checklist/references/checklist-question-bank.md
[ $fail -eq 0 ] && echo "All shared copies match their masters." || echo "Shared copies are out of step. Re-copy from the master, keeping the header line."
exit $fail
