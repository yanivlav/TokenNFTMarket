# VendorTokenNFT

NFT Minting dapp - Fungible Token as Coin is used to mint NFTs.

- Vendor contract is used to buy your token (like a DEX).
- Deployer pays around (1 Tokens) to mint NFT to the blockchain.
- You can transfer your NFTs to other accounts


# 🏃‍♀️ Quick Start
Required: [Git](https://git-scm.com/downloads), [Node](https://nodejs.org/dist/latest-v12.x/), [Yarn](https://classic.yarnpkg.com/en/docs/install/#mac-stable) and [Hardhat](https://hardhat.org/getting-started/#installation).

> Open a new folder and run:
```bash

git clone https://github.com/BarDAP/VendorTokenNFT.git

yarn
```

> Upload the default art (artwork.json) to IPFS:

```bash

yarn upload

```
> ✏️ You can edit the artwork manifest `artwork.js` with all of your art, then re-upload it to IPFS.


> In another terminal install and start your 👷‍ Hardhat chain:

```bash

yarn chain

```

> Go back to the first terminal, deploy all the things and start your 📱 frontend:

```bash

yarn deploy

yarn start
```
📱 Open http://localhost:3000 to see the app

---

Your artwork from `artwork.json` (if uploaded and deployed correctly) should show a gallery of possible NFTs to mint:

![image](https://user-images.githubusercontent.com/22189126/181051065-eba932dd-b0f4-436e-ac8e-f782718f34b3.png)

Add your token to metamask by copying it from here:
![image](https://user-images.githubusercontent.com/22189126/180666563-9e40d072-6a2f-418b-90ec-59fd92485533.png)

Use the YourToken tab and buy some tokens {token price is static (100YBC = 1ETH) }:

![image](https://user-images.githubusercontent.com/22189126/180665807-dd178340-27bf-4101-bb4b-8d8e4d7a26fc.png)

After buying some tokens you should see your token balance here:

![image](https://user-images.githubusercontent.com/22189126/180664917-3aa9d1d4-9528-4e3c-8af7-b4f335203fcb.png)

You can sell it back here:

![image](https://user-images.githubusercontent.com/22189126/180665465-02159f60-a25c-46f7-8c61-6a4d9c8becdb.png)

Try to "Mint" an NFT minting costs 1YBC:

![image](https://user-images.githubusercontent.com/22189126/181051275-6757ba41-05bf-40ac-a6a7-51e3a76e6e4f.png)

If you want you can transfer your nft to other address:

![image](https://user-images.githubusercontent.com/22189126/180666248-52e4242d-0634-435c-921d-5cec053e9b25.png)





