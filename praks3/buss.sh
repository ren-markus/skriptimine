#!/bin/bash
# Skript: Bussiekskursiooni korraldaja abiline


echo -n "Sisesta reisijate arv grupis: "
read reisijad
echo -n "Sisesta kohtade arv ühes bussis: "
read kohad

# Täielikult täidetud busside arv
bussid=$(expr $reisijad / $kohad)

# Mahajäänud inimeste arv (jääk)
mahajaajad=$(expr $reisijad % $kohad)

echo "----------------------------------------"
echo " Tulemus:"
echo " Täielikult täidetud busse: $bussid"
echo " Inimesi jäi maha: $mahajaajad"
echo "----------------------------------------"
