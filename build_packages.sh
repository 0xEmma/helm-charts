#!/bin/bash
TARGET=charts

set -euo pipefail

if [[ -z "$TARGET" ]]; then
	echo "Set a target eg './stable', '*', './stable/ambassador'"
	exit 1
fi

if [[ -f "$TARGET/Chart.yaml" ]]; then
	chart=$(basename "$TARGET")
	echo "Packaging $chart from $TARGET"
	helm package "$TARGET"
	exit $?
fi

for dirname in "$TARGET"/*/; do
	if [ ! -e "$dirname/Chart.yaml" ]; then
		echo "No charts found for $TARGET"
		continue
	fi

	chart=$(basename "$dirname")
	echo "Packaging $chart from $dirname"
	helm package "$dirname" -d packages --sign --key Emma || exit $?
done

exit 0
