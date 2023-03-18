# homebrew-bat
Homebrew tap for bat cli (Blackbox API Testing)

## Usage
```
brew tap nbattiato/bat-wrapper
brew install bat-wrapper
```

## Making a new homebrew release
1. Get the new binary from Nexus
2. Calculate the sha256 of the binary: `shasum -a 256 <path_to_binary>`
3. Get the binary url from the Nexus https://repository-master.mulesoft.org/nexus/content/repositories/releases/com/mulesoft/bat/bat-wrapper/x.y.z/bat-wrapper-x.y.z.zip
4. Change `url`, `sha256` and `version` to match new release: [here](https://github.com/nbattiato/homebrew-bat/blob/master/formula/bat.rb)