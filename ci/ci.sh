#!/usr/bin/env bash

BASEDIR=$(dirname "$0")
source "$BASEDIR"/logger.sh

PROJECTS=(
    "app"
    "common/generated_io"
    "services/authentication_service"
    )

_run_prepare() {
    for path in "${PROJECTS[@]}"; do
        print_title "prepare for $path"
        cd $path && flutter packages get
    done
}

#########################
###### COVERAGE ########
#######################
_run_coverage_service() {

    for path in "${PROJECTS[@]}"; do
        print_title "coverage for $path"
        docker run --rm \
        -v $path:/app \
        rushioconsulting/coverage_service
    done

}


#  _ __ ___   __ _(_)_ __
# | '_ ` _ \ / _` | | '_ \
# | | | | | | (_| | | | | |
# |_| |_| |_|\__,_|_|_| |_|
#

while getopts :-:h option; do
    case $option in
    -)
        case $OPTARG in
        prepare)
            _run_prepare
            ;;
        coverage)
            _run_coverage_service
            ;;
        *)
            print_error "Le paramètre '--$OPTARG' n'est pas reconnu !"
            usage
            exit 2
            ;;
        esac
        ;;
    :|?| h)
        [[ $option == \? ]] && print_error "L'option -$OPTARG n'est pas prise en charge !"
        [[ $option == : ]] && print_error "L'option -$OPTARG requiert un argument !"
        usage
        exit $([[ $option == h ]] && echo 0 || echo 2)
        ;;
    esac
done
