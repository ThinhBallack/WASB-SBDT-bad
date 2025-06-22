#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0); pwd)
BASE_DIR=/content/drive/MyDrive/Projects/Thesis/Validation/WASB-SBDT-bad
DEST_DIR=/content

mkdir -p ${DEST_DIR}/badminton_data/badminton

unzip /content/drive/MyDrive/Projects/Thesis/TrackNetV2.zip -d ${DEST_DIR}/badminton_dataset

mv ${DEST_DIR}/badminton_dataset/TrackNetV2/Test/match1 ${DEST_DIR}/badminton_data/badminton/test_match1
mv ${DEST_DIR}/badminton_dataset/TrackNetV2/Test/match2 ${DEST_DIR}/badminton_data/badminton/test_match2
mv ${DEST_DIR}/badminton_dataset/TrackNetV2/Test/match3 ${DEST_DIR}/badminton_data/badminton/test_match3
rm -r ${DEST_DIR}/badminton_dataset/TrackNetV2

python3 main.py --config-name=extract_frame dataset=badminton

