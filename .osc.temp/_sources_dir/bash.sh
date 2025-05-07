name="android-tools"
cd "${outdir:-.}"
git clone https://github.com/OpenMandrivaAssociation/android-tools.git
pushd "$name"
sed -i 's~selinux-static-devel~zlib-ng-compat-devel~g;' "$name".spec
popd
mv "$name"/* ./

