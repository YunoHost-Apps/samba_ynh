#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

# Delete directory in advanced parameters
# $1 | String | Directory to delete
clean_advanced_parameters() {
    local filtered_readonly_dir=() filtered_unbrowseable=() tmp_string_readonly_dir tmp_string_unbrowseable

    # Iterating over directories instead of using regex makes sure resulting string doesn't have additional spaces anywhere or directories with names containing other directory name don't get removed.
    for tmp_readonly_dir in ${readonly_dir//,/ }; do
        if ! [[ $tmp_readonly_dir = "$1" ]]; then
            filtered_readonly_dir+=("$tmp_readonly_dir")
        fi
    done
    for tmp_unbrowseable in ${unbrowseable//,/ }; do
        if ! [[ $tmp_unbrowseable = "$1" ]]; then
            filtered_unbrowseable+=("$tmp_unbrowseable")
        fi
    done

    # Temporary variables are necessary as parameter expansions can't be nested.
    tmp_string_readonly_dir=${filtered_readonly_dir[*]}
    tmp_string_unbrowseable=${filtered_unbrowseable[*]}
    
    readonly_dir=${tmp_string_readonly_dir// /,}
    unbrowseable=${tmp_string_unbrowseable// /,}
}

# Output tag field config with selected value(s) and available choice(s)
# $1 | String with coma separated values | Available choice(s) in tag field
# $2 | String with coma separated values | Selected value(s) in tag field
get_tags_field_config() {
    cat << EOF
choices: [${1}]
value: "${2}"
EOF
}