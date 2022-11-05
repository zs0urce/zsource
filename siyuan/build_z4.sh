ver=`head -n 1 CHANGELOG.md|awk -F " " '{print $2}'`
echo "build siyuan $ver"
docker build -f Dockerfile.z4 -t zsource/siyuan:$ver . 

# docker push zsource/siyuan:$ver  
# docker tag zsource/siyuan:$ver zsource/siyuan:latest
# docker push zsource/siyuan:latest