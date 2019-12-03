if [ $# != 1 ]; then
    echo "Usage: $0 ext_name"
    exit 1
fi

EXT=$1

cd source && \
cp -a "${EXT}" "${EXT}.popclipext" && \
zip -r "${EXT}.popclipextz" "${EXT}.popclipext" && \
mv -f "${EXT}.popclipextz" ../extensions && \
rm -rf "${EXT}.popclipext"
