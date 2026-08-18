#!/bin/bash

# Custom tests can be added for custom helpers. You need to launch them manually.


source ./scripts/_common.sh

test__clean_advanced_parameters() {
    #=================================================
    # Initialization variables
    #=================================================
    directories_old_value=("cave" "house" "skyscrapper" "warehouse")
    directories_value=("cave" "skyscrapper" "warehouse")
    # Don't edit readonly_dir and unbrowseable variable names as they're referenced in clean_advanced_parameters function.
    readonly_dir="warehouse,cave,house"
    unbrowseable="house,cave,skyscrapper"
    expected_readonly_dir_valule="warehouse,cave"
    expected_unbrowseable_valule="cave,skyscrapper"

    #=================================================
    # Use function
    #=================================================
    for directory_name in "${directories_old_value[@]}"; do
        if ! [[ "$directory_name" =~ $(echo "^($(echo "${directories_value[@]}" | sed 's/,\| /|/g'))$") ]]; then
            clean_advanced_parameters "$directory_name"
        fi
    done

    #=================================================
    # Assert results
    #=================================================
    if [[ "$readonly_dir" = "$expected_readonly_dir_valule" && "$unbrowseable" = "$expected_unbrowseable_valule" ]]
    then
        echo -e "${FUNCNAME[0]}: \033[42mOK\033[m"
    else 
        echo -e "${FUNCNAME[0]}: \033[41mKO\033[m"
    fi
}

echo "================================================="
echo "Tests start"
echo "================================================="
echo
test__clean_advanced_parameters
echo
echo "================================================="
echo "Tests end"
echo "================================================="