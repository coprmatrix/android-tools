name="android-tools"
cd "${outdir:-.}"
git clone https://src.fedoraproject.org/rpms/"$name".git
pushd "$name"
sed -i '3i BuildRequires: zlib-ng-compat-devel' "$name".spec
sed -i '2i Patch9: https://github.com/nmeum/android-tools/blob/master/patches/extras/0003-extras-libjsonpb-Fix-incompatibility-with-protobuf-v.patch' "$name".spec
bash -x generate-tarball.sh
popd
mv "$name"/* ./

