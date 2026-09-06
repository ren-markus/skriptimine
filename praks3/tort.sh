#!/bin/bash
# Skript: Küpsisetordi materjalikulu arvutaja kokkadele

echo -n "Sisesta aluskandiku pikkus (cm): "
read alus_pikkus
echo -n "Sisesta aluskandiku laius (cm): "
read alus_laius
echo -n "Sisesta küpsise pikkus (cm): "
read kups_pikkus
echo -n "Sisesta küpsise laius (cm): "
read kups_laius
echo -n "Sisesta tordi kihtide arv: "
read kihid
echo -n "Sisesta küpsiste arv ühes pakis: "
read pakis

# Arvutame, mitu küpsist mahub ühte kihti pikkusesse ja laiusesse
ridadesse=$(expr $alus_pikkus / $kups_pikkus)
veerudesse=$(expr $alus_laius / $kups_laius)
kupsiseid_kihis=$(expr $ridadesse \* $veerudesse)

# Kokku vajalike küpsiste arv kõikide kihtide peale
kokku_kupsiseid=$(expr $kupsiseid_kihis \* $kihid)

# Vajalike pakkide arv (kui on jääk, lisame ühe paki juurde)
tarvis_pakke=$(expr $kokku_kupsiseid / $pakis)
jaak=$(expr $kokku_kupsiseid % $pakis)

if [ $jaak -gt 0 ]; then
    tarvis_pakke=$(expr $tarvis_pakke + 1)
fi

echo "----------------------------------------"
echo " Tulemus:"
echo " Küpsiseid ühes kihis: $kupsiseid_kihis tk"
echo " Kokku kulub küpsiseid: $kokku_kupsiseid tk"
echo " Poeeksemplare vaja osta: $tarvis_pakke pakki"
echo "----------------------------------------"
