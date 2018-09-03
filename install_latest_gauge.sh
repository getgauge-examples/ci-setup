GAUGE_LATEST=`curl -w "%{url_effective}\n" -L -s -S https://github.com/getgauge/gauge/releases/latest -o /dev/null`

GAUGE_LATEST_VERSION=`echo $GAUGE_LATEST | sed 's/.*\/v//'`

unamestr=`uname`

if [[ "$unamestr" == 'Linux' ]]; then
    PLATFORM="linux"
elif [[ "$unamestr" == 'Darwin' ]]; then
    PLATFORM="darwin"
fi

GAUGE_FILE_NAME="gauge-$GAUGE_LATEST_VERSION-$PLATFORM.$BIT.zip"
GAUGE_DOWNLOAD_URL="https://bintray.com/gauge/Gauge/download_file?file_path=$PLATFORM%2F$GAUGE_FILE_NAME"
wget $GAUGE_DOWNLOAD_URL -O $GAUGE_FILE_NAME
unzip $GAUGE_FILE_NAME -d $GAUGE_PREFIX/bin
