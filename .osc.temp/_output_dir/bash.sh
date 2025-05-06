name="objectweb-asm"
cd "${outdir:-.}"
git clone https://src.fedoraproject.org/rpms/"$name".git
pushd "$name"
sed -i 's/%bcond_with bootstrap/%bcond_without bootstrap/' "$name".spec
bash -x generate-tarball.sh
popd
mv "$name"/* ./

