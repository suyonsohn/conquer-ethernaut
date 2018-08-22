const Web3 = require('web3')

const web3 = new Web3(new Web3.providers.HttpProvider("https://ropsten.infura.io/v3/5d1dc24c8c75457fb6fa1ba6b15ad569"))

for (let i = 0; i < 6; i++) {
    web3.eth.getStorageAt('0xb2c4382d2d74dc7b553489fd66334173da2da501', i).then(result => {
        console.log(`${i}: ${result}`)
    });
}
