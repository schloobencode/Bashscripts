#!/usr/bin/env bash
wikidir="/usr/share/doc/arch-wiki/html/en/"
docs="$(ls ${wikidir})"
selection=$(printf '%s\n'   "${docs[@]}" | dmenu -i -l 20) || exit 1
$BROWSER ${wikidir}${selection}
