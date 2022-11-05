echo "build chrome-novnc for z4" 
docker build -f Dockerfile -t chrome-novnc:latest . 

# docker push zsource/chrome-novnc:latest