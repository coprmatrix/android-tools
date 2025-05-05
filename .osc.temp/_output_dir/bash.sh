cd "${outdir:-.}"
git clone https://src.fedoraproject.org/rpms/objectweb-asm.git
pushd objectweb-asm
sed -i 's/%bcond_with\s+bootstrap/%bcond_without\sbootstrap/' objectweb-asm.spec
bash -x generate-tarball.sh
popd
mv objectweb-asm/* ./

