
package bad

import intfs "yang.to.cue/pkg:yang"

Config: interfaces: intfs.#OpenconfigInterfaces_Interfaces & {interface: [{
	config: {
		description: "loopback interface"
		mtu:         1500
		name:        "Loopback0"
	}
	name: "Loopback0"
	subinterfaces: {
		subinterface: [{
			config: {
				description: "default subinterface"
				index:       0
			}
			index: 0
			ipv4: {
				addresses: {
					address: [{
						ip: "192.0.2.1"
						config: {
							"addr-type": "PRIMARY"
							"prefix-length": 24
							ip:              "192.0.2.1"
							}
						}]
					}
				}
			}]
		}
	},
	{
		name: "Loopback0"
		config: {
			name: "Loopback0"
		}
	},]
}


