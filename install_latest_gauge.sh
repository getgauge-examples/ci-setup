GAUGE_DOWNLOAD_URL="https://bintray.com/gauge/Gauge/Nightly/0.9.0.nightly-2017-07-12/gauge-0.9.0.nightly-2017-07-12-linux.x86_64.zip"

wget $GAUGE_DOWNLOAD_URL

OUTPUT_DIR="./gauge_0.9.0.nightly-2017-07-12-linux.x86_64"

unzip "gauge_0.9.0.nightly-2017-07-12-linux.x86_64.zip" -d $OUTPUT_DIR

cd $OUTPUT_DIR

/bin/bash install.sh $1
