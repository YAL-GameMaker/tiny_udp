{
  "optionsFile": "options.json",
  "options": [],
  "exportToGame": true,
  "supportedTargets": 113497714299118,
  "extensionVersion": "1.0.0",
  "packageId": "",
  "productId": "",
  "author": "",
  "date": "2019-12-12T01:34:29",
  "license": "Proprietary",
  "description": "",
  "helpfile": "",
  "iosProps": true,
  "tvosProps": false,
  "androidProps": true,
  "installdir": "",
  "files": [
    {"filename":"tiny_udp.dll","origname":"extensions\\tiny_udp.dll","init":"","final":"","kind":1,"uncompress":false,"functions":[
        {"externalName":"tiny_udp_create_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"tiny_udp_create_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"tiny_udp_destroy_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"tiny_udp_destroy_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"tiny_udp_bind_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"tiny_udp_bind_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"tiny_udp_packet_send_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":3,"args":[
            1,
            2,
            1,
          ],"resourceVersion":"1.0","name":"tiny_udp_packet_send_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"tiny_udp_packet_receive_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"tiny_udp_packet_receive_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"tiny_udp_packet_get_sender_url_raw","kind":11,"help":"","hidden":true,"returnType":1,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"tiny_udp_packet_get_sender_url_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"tiny_udp_packet_get_sender_port_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"tiny_udp_packet_get_sender_port_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"tiny_udp_is_available","kind":1,"help":"tiny_udp_is_available()","hidden":false,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"tiny_udp_is_available","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"tiny_udp_get_last_error","kind":1,"help":"tiny_udp_get_last_error()","hidden":false,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"tiny_udp_get_last_error","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[
        
      ],"ProxyFiles":[
        {"name":"tiny_udp_x64.dll","tags":[],"resourceVersion":"1.0","resourceType":"GMProxyFile","TargetMask":6,},
      ],"copyToTargets":9223372036854775807,"order":[
        {"name":"tiny_udp_create_raw","path":"extensions/tiny_udp/tiny_udp.yy",},
        {"name":"tiny_udp_destroy_raw","path":"extensions/tiny_udp/tiny_udp.yy",},
        {"name":"tiny_udp_bind_raw","path":"extensions/tiny_udp/tiny_udp.yy",},
        {"name":"tiny_udp_packet_send_raw","path":"extensions/tiny_udp/tiny_udp.yy",},
        {"name":"tiny_udp_packet_receive_raw","path":"extensions/tiny_udp/tiny_udp.yy",},
        {"name":"tiny_udp_packet_get_sender_url_raw","path":"extensions/tiny_udp/tiny_udp.yy",},
        {"name":"tiny_udp_packet_get_sender_port_raw","path":"extensions/tiny_udp/tiny_udp.yy",},
        {"name":"tiny_udp_is_available","path":"extensions/tiny_udp/tiny_udp.yy",},
        {"name":"tiny_udp_get_last_error","path":"extensions/tiny_udp/tiny_udp.yy",},
      ],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
    {"filename":"tiny_udp.gml","origname":"extensions\\gml.gml","init":"","final":"","kind":2,"uncompress":false,"functions":[
        {"externalName":"tiny_udp_pragma","kind":11,"help":"","hidden":true,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"tiny_udp_pragma","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"tiny_udp_prepare_buffer","kind":11,"help":"","hidden":true,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"tiny_udp_prepare_buffer","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[
        
      ],"ProxyFiles":[],"copyToTargets":9223372036854775807,"order":[
        {"name":"tiny_udp_pragma","path":"extensions/tiny_udp/tiny_udp.yy",},
        {"name":"tiny_udp_prepare_buffer","path":"extensions/tiny_udp/tiny_udp.yy",},
      ],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
    {"filename":"autogen.gml","origname":"extensions\\autogen.gml","init":"","final":"","kind":2,"uncompress":false,"functions":[
        {"externalName":"tiny_udp_create","kind":2,"help":"tiny_udp_create()->","hidden":false,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"tiny_udp_create","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"tiny_udp_destroy","kind":2,"help":"tiny_udp_destroy(udp)","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"tiny_udp_destroy","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"tiny_udp_bind","kind":2,"help":"tiny_udp_bind(udp, port:int)->bool","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"tiny_udp_bind","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"tiny_udp_packet_send","kind":2,"help":"tiny_udp_packet_send(udp, url:string, port:int, buffer:buffer, ?size:int?)->int","hidden":false,"returnType":2,"argCount":-1,"args":[],"resourceVersion":"1.0","name":"tiny_udp_packet_send","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"tiny_udp_packet_receive","kind":2,"help":"tiny_udp_packet_receive(udp, buffer:buffer)->int","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"tiny_udp_packet_receive","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"tiny_udp_packet_get_sender_url","kind":2,"help":"tiny_udp_packet_get_sender_url(udp)->string","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"tiny_udp_packet_get_sender_url","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"tiny_udp_packet_get_sender_port","kind":2,"help":"tiny_udp_packet_get_sender_port(udp)->int","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"tiny_udp_packet_get_sender_port","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[
        
      ],"ProxyFiles":[],"copyToTargets":-1,"order":[
        {"name":"tiny_udp_create","path":"extensions/tiny_udp/tiny_udp.yy",},
        {"name":"tiny_udp_destroy","path":"extensions/tiny_udp/tiny_udp.yy",},
        {"name":"tiny_udp_bind","path":"extensions/tiny_udp/tiny_udp.yy",},
        {"name":"tiny_udp_packet_send","path":"extensions/tiny_udp/tiny_udp.yy",},
        {"name":"tiny_udp_packet_receive","path":"extensions/tiny_udp/tiny_udp.yy",},
        {"name":"tiny_udp_packet_get_sender_url","path":"extensions/tiny_udp/tiny_udp.yy",},
        {"name":"tiny_udp_packet_get_sender_port","path":"extensions/tiny_udp/tiny_udp.yy",},
      ],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
  ],
  "classname": "",
  "tvosclassname": "",
  "tvosdelegatename": "",
  "iosdelegatename": "",
  "androidclassname": "",
  "sourcedir": "",
  "androidsourcedir": "",
  "macsourcedir": "",
  "maccompilerflags": "",
  "tvosmaccompilerflags": "",
  "maclinkerflags": "",
  "tvosmaclinkerflags": "",
  "androidcodeinjection": "",
  "ioscodeinjection": "",
  "tvoscodeinjection": "",
  "iosSystemFrameworkEntries": [],
  "tvosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
  "IncludedResources": [],
  "androidPermissions": [],
  "copyToTargets": 113497714299118,
  "parent": {
    "name": "Extensions",
    "path": "folders/Extensions.yy",
  },
  "resourceVersion": "1.2",
  "name": "tiny_udp",
  "tags": [],
  "resourceType": "GMExtension",
}