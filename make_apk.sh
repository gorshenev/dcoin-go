./bindata.sh && ./make_res.sh && ANDROID_HOME=/home/z/android-sdk-linux go generate github.com/c-darwin/mobile/cmd/gomobile/ && go install github.com/c-darwin/mobile/cmd/gomobile/ && CGO_ENABLED=1 GOOS=android ANDROID_HOME=/home/z/android-sdk-linux gomobile build -v github.com/democratic-coin/dcoin-go ; mv dcoin-go.apk /home/z/multiplatform/dc-compiled/dcoin.apk ; rm -rf R.jar