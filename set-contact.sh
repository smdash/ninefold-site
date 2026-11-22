#!/bin/sh
# Replaces the {{CONTACT_EMAIL}} placeholder in the pages with $CONTACT_EMAIL.
set -e
[ -n "$CONTACT_EMAIL" ] || { echo "Set CONTACT_EMAIL first: CONTACT_EMAIL=you@example.com sh set-contact.sh"; exit 1; }
cd "$(dirname "$0")"
for f in index.html support.html privacy.html; do
  sed -i '' "s|{{CONTACT_EMAIL}}|$CONTACT_EMAIL|g" "$f"
done
grep -c "$CONTACT_EMAIL" support.html privacy.html
echo "Contact set."
