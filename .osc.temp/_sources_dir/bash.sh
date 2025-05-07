name="android-tools"
cd "${outdir:-.}"
git clone https://src.fedoraproject.org/rpms/"$name".git
pushd "$name"
sed -i '3i BuildRequires: zlib-ng-compat-devel' "$name".spec
bash -x generate-tarball.sh
popd
mv "$name"/* ./

