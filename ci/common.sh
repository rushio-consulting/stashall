#!/usr/bin/env bash

readonly RED="\\033[1;31m"
readonly DGREEN="\\033[0;32m"
readonly GREEN="\\033[1;32m"
readonly YELLOW="\\033[1;33m"
readonly BLUE="\\033[1;34m"
readonly MAGENTA="\\033[1;35m"
readonly CYAN="\\033[1;36m"
readonly GRAS="\033[1m"
readonly END="\\033[1;00m"
readonly FATAL="\\033[1;37;41m" # Blanc sur fond rouge vif

_E="-e"
_N="-n"
_C="\c"
_SEP=$COL60

print() {
	[[ -z $QUIET ]] && echo "$@" || return 0
}

# Affiche le message de vérification sans retour chariot
# Utiliser print_check_result pour afficher le résultat sur la même ligne
# @param... Le texte à afficher
print_check_title() {
	local title="$*"
	echo $_N $_E " $CYAN*$END $title$_C"
	[ ${#title} -ge 57 ] && _SEP="\t" || _SEP=$COL60
}

# Affiche le résultat d'une vérification
# @param code du résultat : 0 = OK, > 0 = KO, "" = ??
# @param texte à afficher (par défaut : OK, KO ou ??)
print_check_result() {
	if [ -z "$1" ]; then
		echo $_E "${_SEP}${YELLOW}${2:-??}${END}"
	elif [ "$1" = 0 ]; then
		echo $_E "${_SEP}${GREEN}${2:-OK}${END}"
	else
		echo $_E "${_SEP}${RED}${2:-KO}${END}"
		echo
	fi
}

print_title() {
	echo ""
	echo $_E "$BLUE# $* $END"
	echo ""
}

print_error() {
	echo $_E "${RED}ERREUR: $* $END" >&2
}

print_error_and_exit() {
	echo $_E "${RED}ERREUR: $1 $END\n" >&2 && exit ${2:-2}
}

print_info() {
	echo $_E "${GREEN}INFO: $* $END"
}





