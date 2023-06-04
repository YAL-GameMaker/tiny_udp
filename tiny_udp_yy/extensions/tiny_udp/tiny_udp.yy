{
    "id": "897059ab-6c2a-4b63-a648-db09480cff45",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "tiny_udp",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 113497714299118,
    "date": "2019-34-12 01:12:29",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "bac80d6c-a2e2-445c-9d9d-6141adb131a5",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "tiny_udp.dll",
            "final": "",
            "functions": [
                {
                    "id": "4b5b4600-e6e8-3d49-604a-3480bdbd22f6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "tiny_udp_create_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "tiny_udp_create_raw",
                    "returnType": 2
                },
                {
                    "id": "79523171-4974-0748-dd01-912cc2d4d71f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "tiny_udp_destroy_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "tiny_udp_destroy_raw",
                    "returnType": 2
                },
                {
                    "id": "2c4bf829-a10c-5d29-faef-f1e48e22f30a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "tiny_udp_bind_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "tiny_udp_bind_raw",
                    "returnType": 2
                },
                {
                    "id": "78687533-c4ca-1f7a-f9d3-bc083dac9945",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        1
                    ],
                    "externalName": "tiny_udp_packet_send_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "tiny_udp_packet_send_raw",
                    "returnType": 2
                },
                {
                    "id": "5e254617-8f12-7035-08cd-fde89274d786",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "tiny_udp_packet_receive_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "tiny_udp_packet_receive_raw",
                    "returnType": 2
                },
                {
                    "id": "4b5b4600-808e-5b49-ac86-9e2a1cca9946",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "tiny_udp_packet_get_sender_url_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "tiny_udp_packet_get_sender_url_raw",
                    "returnType": 1
                },
                {
                    "id": "17bcdff9-0e03-165a-f476-29af9f82b197",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "tiny_udp_packet_get_sender_port_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "tiny_udp_packet_get_sender_port_raw",
                    "returnType": 2
                },
                {
                    "id": "69796422-2a24-f16b-e8c2-52e6d19faa74",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "tiny_udp_is_available",
                    "help": "tiny_udp_is_available()",
                    "hidden": false,
                    "kind": 1,
                    "name": "tiny_udp_is_available",
                    "returnType": 2
                },
                {
                    "id": "56d7f3cb-d24f-584c-c10d-1c68a986aae6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "tiny_udp_get_last_error",
                    "help": "tiny_udp_get_last_error()",
                    "hidden": false,
                    "kind": 1,
                    "name": "tiny_udp_get_last_error",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\tiny_udp.dll",
            "uncompress": false
        },
        {
            "id": "7cc73678-e3b5-432b-8372-a1d5779ceb4b",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "tiny_udp.gml",
            "final": "",
            "functions": [
                {
                    "id": "e1f1ecaa-c4ca-1fe3-715b-ad19279fbb6c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "tiny_udp_pragma",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "tiny_udp_pragma",
                    "returnType": 2
                },
                {
                    "id": "0f1f0244-2a24-f10d-4268-9e2a1c24dd02",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tiny_udp_prepare_buffer",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "tiny_udp_prepare_buffer",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                
            ],
            "origname": "extensions\\gml.gml",
            "uncompress": false
        },
        {
            "id": "962d9a80-fb98-4072-93ea-c79e5ae6f0f4",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "autogen.gml",
            "final": "",
            "functions": [
                {
                    "id": "e467db4b-cd14-6bed-d0e2-8e4e4ee0e7bb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "tiny_udp_create",
                    "help": "tiny_udp_create()->",
                    "hidden": false,
                    "kind": 2,
                    "name": "tiny_udp_create",
                    "returnType": 2
                },
                {
                    "id": "d196e933-bdcd-da54-191e-f9d7ce22950c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tiny_udp_destroy",
                    "help": "tiny_udp_destroy(udp)",
                    "hidden": false,
                    "kind": 2,
                    "name": "tiny_udp_destroy",
                    "returnType": 2
                },
                {
                    "id": "0a908ef7-4335-2bce-dcaa-0cf6b601174b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "tiny_udp_bind",
                    "help": "tiny_udp_bind(udp, port:int)->bool",
                    "hidden": false,
                    "kind": 2,
                    "name": "tiny_udp_bind",
                    "returnType": 2
                },
                {
                    "id": "6f7194ff-d101-0a5e-bba8-3f13935f48cd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "tiny_udp_packet_send",
                    "help": "tiny_udp_packet_send(udp, url:string, port:int, buffer:buffer, ?size:int?)->int",
                    "hidden": false,
                    "kind": 2,
                    "name": "tiny_udp_packet_send",
                    "returnType": 2
                },
                {
                    "id": "1b5cd6b3-0fee-3a78-a8ea-093161d811ee",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "tiny_udp_packet_receive",
                    "help": "tiny_udp_packet_receive(udp, buffer:buffer)->int",
                    "hidden": false,
                    "kind": 2,
                    "name": "tiny_udp_packet_receive",
                    "returnType": 2
                },
                {
                    "id": "e0a570a1-2257-2a55-5625-5b2663f9203c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tiny_udp_packet_get_sender_url",
                    "help": "tiny_udp_packet_get_sender_url(udp)->string",
                    "hidden": false,
                    "kind": 2,
                    "name": "tiny_udp_packet_get_sender_url",
                    "returnType": 2
                },
                {
                    "id": "8f3c50fb-ad99-d0b6-2f5f-a2848f97a6c7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "tiny_udp_packet_get_sender_port",
                    "help": "tiny_udp_packet_get_sender_port(udp)->int",
                    "hidden": false,
                    "kind": 2,
                    "name": "tiny_udp_packet_get_sender_port",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                
            ],
            "origname": "extensions\\autogen.gml",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "Proprietary",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "",
    "productID": "",
    "sourcedir": "",
    "supportedTargets": 113497714299118,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "1.0.0"
}