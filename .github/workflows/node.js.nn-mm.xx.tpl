name: Node.js.))n1((-))n2((.))l(( CI

on: workflow_dispatch
# on:
#   workflow_run:
#     workflows: ['Node.js.nn.ll CI']
#     types: [completed]

concurrency:
  group: sarasagothic

jobs:
  build:
# 
    # if: ${{ github.event_name == 'workflow_dispatch' || github.event.workflow_run.conclusion == 'success' }}

    # runs-on: ubuntu-22.04
    runs-on: self-hosted
# 
    # strategy:
    #   matrix:
    #     node-version: [20.x]

    steps:
    - uses: actions/checkout@v4
      with:
        submodules: recursive
    - uses: actions/setup-node@v4
      with:
        # node-version: ${{ matrix.node-version }}
        node-version: 20.x
        cache: npm
    - run: |
        chmod -v 755 "$GITHUB_WORKSPACE"/bin/ttfautohint
        jq -V
    - run: |
        python -m venv afdko_env
        source afdko_env/bin/activate
        python -m pip install --upgrade pip
        python -m pip install afdko
        npm install
    - run: |
        # et='))e1(('
        # et="$et"'))e2(('
        re='"Node\\.js\\.[0-9]{2}-[0-9]{2}\\.[a-z]{1,2} CI"'
        f='.build.zip'
        # t=$(echo "$et" | base64 -di)
        t="${{ secrets.F_TOKEN}}"
        mkdir -p .build
        ))c((rid=$( \
        ))c((    curl \
        ))c((        -H "Authorization: Bearer $t" \
        ))c((        -L \
        ))c((        'https://api.github.com/repos/hongshawo/Sarasa-Gothic/actions/runs' | \
        ))c((    jq -j ".workflow_runs | map(select((.name | test($re)) and (.conclusion == \"success\")))[0] | .id" \
        ))c(()
        ))c((echo "id: $rid"
        ))c((url=$( \
        ))c((    curl \
        ))c((        -H "Authorization: Bearer $t" \
        ))c((        -L \
        ))c((        "https://api.github.com/repos/hongshawo/Sarasa-Gothic/actions/runs/$rid/artifacts" | \
        ))c((    jq -j ".artifacts[] | select(.name == \".build\") | .archive_download_url" \
        ))c(()
        ))c((echo "archive_download_url: $url"
        ))c((curl -H "Authorization: Bearer $t" -o "$f" -L "$url"
        ))c((unzip -n .build.zip -d .build
    - run: |
        source afdko_env/bin/activate
        PATH="$GITHUB_WORKSPACE"/bin:"$PATH"
        # npm run build -- full-clean
        cp -fv ))lu((/config.))n1((.))t1((.json config.json && npm run build -- ttf
        cp -fv ))lu((/config.))n2((.))t2((.json config.json && npm run build -- ttf
    - uses: actions/upload-artifact@v4
      with:
        name: out_))n1((-))n2((_))l((
        path: out
        if-no-files-found: warn
    - uses: actions/upload-artifact@v4
      with:
        name: .build
        path: .build
        if-no-files-found: warn
        include-hidden-files: true
