#!/usr/bin/env bash

projects="assert config core exception predef smart_ptr throw_exception utility test preprocessor type_traits detail \
static_assert mpl numeric_conversion tr1 function compute integer filesystem type_index functional container bind move \
iterator timer io algorithm range optional"

submodule_add(){
    (($# != 1)) && echo "invalid arguments '$@'" && return
    git submodule add git@github.com:boostorg/$1 boost/$1
}

submodule_exist(){
    (($# != 1)) && echo "invalid arguments '$@'" && return
    local submodules=$(git submodule--helper list | cut -f2 | sed -e 's/^/@/' -e 's/$/@/' )
    if [[ $submodules == *"@boost/$1@"* ]] ; then
        return 0
    else
        return 1
    fi
}

index=1
for project in $projects
do
    ( ! submodule_exist $project ) && ( submodule_add $project )
    echo "include_directories(boost/$project/include)" \# $((index++))
done
