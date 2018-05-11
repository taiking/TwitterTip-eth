var HDWalletProvider = require("./node_modules/truffle-hdwallet-provider");
var mnemonic = "virus inflict reduce hurry siren rescue shed soap grab spirit minimum there"
module.exports = {
	networks: {
		development: {
		host: "localhost",
		port: 8545,
		network_id: "*" // Match any network id
		},
		ropsten: {
			provider: new HDWalletProvider(mnemonic, "https://ropsten.infura.io/"),
			network_id: '3',
			gas: 4600000,
		},
	},
};