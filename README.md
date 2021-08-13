# lushan

## Usage

TODO

## Deployment

1. deploy contracts

```bash
export ARBITRUM_RINKEBY_WEB3_ENDPOINT=https://rinkeby.arbitrum.io/rpc
export ARBITRUM_RINKEBY_DEPLOYER_MNEMONIC="find mnemonic in 1Password"

npm run deploy-staging

# only run the specific deployment script
npm run deploy-staging -- --tags Pool-vETHvUSD
```

2. update CHANGELOG.md

3. update `version` of `package.json` and `package-lock.json`

4. publish npm package

```bash
# push tag to trigger "Publish NPM package" workflow
git tag vX.X.X
git push origin --tags

# create GitHub release
gh release create vX.X.X -t "vX.X.X" -F CHANGELOG.md
```
