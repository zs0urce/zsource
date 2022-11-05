ver=`head -n 1 CHANGELOG.md|awk -F " " '{print $2}'`
echo "build siyuan $ver for z2s" 
docker build --platform=linux/arm64/v8 -f Dockerfile.z2s -t zsource/siyuan:$ver-arm64 .

# docker push zsource/siyuan:$ver-arm64