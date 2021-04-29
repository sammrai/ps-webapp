#!/bin/sh

cecho(){
    echo "<h2>${@}</h2>"
    echo "<pre>"
    eval "$1"
    echo "</pre>"
}

eval $QUERY_STRING
echo 'Content-type: text/html'  
echo ''

echo '<!DOCTYPE html>'
echo '<head><meta charset="UTF-8"><title>ps-webapp</title></head>'
echo '<body>'
echo '<h1>Server Overview</h1>'

cecho "nvidia-smi"
cecho "sensors"
cecho "top -b -n 1 | head -n 20"

echo '</body>'
echo '</html>'
