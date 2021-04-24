#!/bin/sh

eval $QUERY_STRING
echo 'Content-type: text/html'  
echo ''

echo '<html>'
echo '<head></head>'
echo '<h1>Server Overview</h1>'

cecho(){
    echo "<h2>${@}</h2>"
    echo "<pre>"
    eval $@
    echo "</pre>"
}

cecho sensors
cecho top -b -n 1 -c | head -n 30

echo '<body>'
