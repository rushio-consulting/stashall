#!/usr/bin/env bash

_run_coverage_service() {
    local path
    path=$1

    docker run --rm \
        -v $path:/app \
        rushioconsulting/coverage_service
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
        compil)
            _build_in_docker
            ;;
        *)
            print_error "Le paramètre '--$OPTARG' n'est pas reconnu !"
            usage
            exit 2
            ;;
        esac
        ;;
    : | ? | h)
        [[ $option == \? ]] && print_error "L'option -$OPTARG n'est pas prise en charge !"
        [[ $option == : ]] && print_error "L'option -$OPTARG requiert un argument !"
        usage
        exit $([[ $option == h ]] && echo 0 || echo 2)
        ;;
    esac
done
