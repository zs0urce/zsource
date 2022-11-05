echo "build chrome-novnc for z2s" 
docker build --platform=linux/arm64/v8 -f Dockerfile.arm64 -t zsource/chrome-novnc:arm64 .

# docker push zsource/chrome-novnc:arm64