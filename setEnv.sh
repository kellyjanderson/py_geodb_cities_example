#!/bin/bash


#!/bin/bash

while [[ "$#" -gt 0 ]]; do
    case $1 in
        --mock|-m)
            echo "Setting up mocking environment"
            export GEODBCITIESURL="http://localhost:3003/v1"
            shift
            ;;
        --local|-l)
            age="$2"
            echo "Setting up local dev environment"
            export GEODBCITIESURL="https://wft-geo-db.p.rapidapi.com/v1/"
            export APIKEY="4fa263a9cdmsh1f2695e8697ab6ap136ca6jsnac3c3792e193"
            export APIHOST="wft-geo-db.p.rapidapi.com"
            shift
            ;;
        *)
            echo "Unknown parameter passed: $1"
            exit 1
            ;;
    esac
    shift
done

