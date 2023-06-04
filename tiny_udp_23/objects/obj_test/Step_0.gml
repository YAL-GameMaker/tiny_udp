recvloop(server, true);
if (check_client) recvloop(client, false);
if (keyboard_check_pressed(vk_enter)) {
	check_client = true;
	buffer_seek(out, buffer_seek_start, 0);
	buffer_write(out, buffer_string, "Hello!");
	var n = tiny_udp_packet_send(client, "127.0.0.1", 5394, out);
	trace("send:", n);
	if (n < 0) trace("send error", tiny_udp_get_last_error());
}
if (keyboard_check_pressed(vk_escape)) {
	tiny_udp_destroy(server);
	tiny_udp_destroy(client);
	trace("Destroyed!");
	game_end();
}