#!/bin/sh
set -eu
mkdir -p dist
cat > dist/index.html <<HTML
<!doctype html>
<meta charset="utf-8">
<title>CF test harness</title>
<body style="font-family:system-ui;max-width:40rem;margin:4rem auto">
<h1>REPO = ${MARKER:-UNSET}</h1>
<p>TEST_VAR = ${TEST_VAR:-UNSET}</p>
<p>built at $(date -u +"%Y-%m-%d %H:%M:%SZ")</p>
<p>commit ${CF_PAGES_COMMIT_SHA:-unknown}</p>
<p>branch ${CF_PAGES_BRANCH:-unknown}</p>
<p>url ${CF_PAGES_URL:-unknown}</p>
HTML
echo "--- build.sh finished, output: ---"
cat dist/index.html
