trident fetch -d secretData -f "*2012_KellerNatureCommunications*"
trident genoconvert -d secretData --outFormat EIGENSTRAT

mkdir iceGeno

cp secretData/2012_KellerNatureCommunications-2.1.1/2012_KellerNatureCommunications.geno iceGeno/ice.geno
cp secretData/2012_KellerNatureCommunications-2.1.1/2012_KellerNatureCommunications.ind iceGeno/ice.ind
cp secretData/2012_KellerNatureCommunications-2.1.1/2012_KellerNatureCommunications.snp iceGeno/ice.snp

sed -i -e 's/Iceman.SG/ice/g' iceGeno/ice.ind
sed -i -e 's/Italy_North_MN_Iceman_contam.SG/iceG/g' iceGeno/ice.ind
