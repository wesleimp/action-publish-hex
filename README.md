# action-publish-hex

Publish elixir packages to hex.pm

## Usage

* Create a key on your hex.pm dashboard.
* Add the key to your GitHub repository’s secrets. Call it `HEX_API_KEY`.
* Use this GitHub Action in your workflow:
```yaml
on:
  push:
    tags:
      - '*'

jobs:
  publish:
    runs-on: ubuntu-latest
    steps:
      - name: Check out
        uses: actions/checkout@v2

      - name: Publish package to hex.pm
        uses: wesleimp/action-publish-hex@v1
        env:
          HEX_API_KEY: ${{ secrets.HEX_API_KEY }}
```
