const Web3 = require('web3')

const web3 = new Web3(new Web3.providers.HttpProvider("https://ropsten.infura.io/v3/5d1dc24c8c75457fb6fa1ba6b15ad569"))

for (let i = 0; i < 2; i++) {
    web3.eth.getStorageAt('0xca3fdf8d4c758ce106dfb27a605aaaef50c98737', i).then(result => {
        console.log(`${i}: ${result}`)
    });
}
