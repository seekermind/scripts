#!/bin/bash

grep "Bangladesh" ~/.cache/corona | sed "s/\s*//g ; s/║//g ; s/▲//g" | awk -F "│" '{print "BD: 😷" $3"("$9")" "💀" $5"("$7"%)"}'
grep "Italy" ~/.cache/corona | sed "s/\s*//g ; s/║//g ; s/▲//g" | awk -F "│" '{print "IT: 😷" $3"("$9")" "💀" $5"("$7"%)"}'
grep "Iran" ~/.cache/corona | sed "s/\s*//g ; s/║//g ; s/▲//g" | awk -F "│" '{print "IR: 😷" $3"("$9")" "💀" $5"("$7"%)"}'
