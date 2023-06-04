server = tiny_udp_create();
if (server == undefined) trace("create error", tiny_udp_get_last_error());
if (!tiny_udp_bind(server, 5394)) trace("bind error", tiny_udp_get_last_error());

client = tiny_udp_create();
if (server == undefined) trace("create error", tiny_udp_get_last_error());
check_client = false; // client socket is initially not bound to anything

buf = buffer_create(1500, buffer_fixed, 1);
out = buffer_create(1500, buffer_fixed, 1);
recvloop = function(_skt, _sv) {
	repeat (256) {
		var recv = tiny_udp_packet_receive(_skt, buf);
		if (recv == -1) trace("recv error", tiny_udp_get_last_error());
		if (recv < 0) break;
		trace("---");
		trace("recv:", recv, "bytes");
		var _url = tiny_udp_packet_get_sender_url(_skt);
		var _port = tiny_udp_packet_get_sender_port(_skt);
		buffer_seek(buf, buffer_seek_start, 0);
		trace("from:", _url + ":" + string(_port))
		trace("str:", buffer_read(buf, buffer_string))
		if (_sv) {
			buffer_seek(out, buffer_seek_start, 0);
			buffer_write(out, buffer_string, "Hello yes");
			tiny_udp_packet_send(_skt, _url, _port, out);
		}
	}
}