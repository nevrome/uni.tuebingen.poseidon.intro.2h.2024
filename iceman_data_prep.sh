cd scratch

trident fetch -d secretData -f "*2012_KellerNatureCommunications*"
trident genoconvert -d secretData --outFormat EIGENSTRAT

mkdir ice

cp secretData/2012_KellerNatureCommunications-2.1.1/2012_KellerNatureCommunications.geno ice/ice.geno
cp secretData/2012_KellerNatureCommunications-2.1.1/2012_KellerNatureCommunications.ind ice/ice.ind
cp secretData/2012_KellerNatureCommunications-2.1.1/2012_KellerNatureCommunications.snp ice/ice.snp

sed -i -e 's/Iceman.SG/ice/g' ice/ice.ind
sed -i -e 's/Italy_North_MN_Iceman_contam.SG/iceG/g' ice/ice.ind
