GAUGE_LATEST_VERSION="0.9.0.nightly-2017-07-12"

BIT=`uname -m`

if [ "$BIT"=="x86_64" ];
then
GAUGE_FILE_NAME="gauge-$GAUGE_LATEST_VERSION-linux.x86_64.zip"
else
GAUGE_FILE_NAME="gauge-$GAUGE_LATEST_VERSION-linux.x86.zip"
fi

GAUGE_DOWNLOAD_URL="https://bintray.com/gauge/Gauge/download_file?file_path=linux%2F$GAUGE_FILE_NAME"

wget $GAUGE_DOWNLOAD_URL

OUTPUT_DIR="./gauge_$GAUGE_LATEST_VERSION"

unzip $GAUGE_FILE_NAME -d $OUTPUT_DIR

cd $OUTPUT_DIR

/bin/bash install.sh $1
