name="android-tools"
cd "${outdir:-.}"
git clone https://src.fedoraproject.org/rpms/android-tools.git
pushd "$name"
sed -i '3i BuildRequires: zlib-ng-compat-devel' "$name".spec
sed -i '2i Patch9: https://raw.githubusercontent.com/OpenMandrivaAssociation/android-tools/refs/heads/rolling/android-tools-protobuf-30.patch' "$name".spec
#bash -x generate-tarball.sh
popd
mv "$name"/* ./

