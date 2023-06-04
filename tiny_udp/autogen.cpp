#include "gml_ext.h"
// Struct forward declarations:
// from tiny_udp.cpp:5:
struct tiny_udp;
extern gml_ptr<tiny_udp> tiny_udp_create();
dllx double tiny_udp_create_raw(void* _inout_ptr, double _inout_ptr_size) {
	gml_istream _in(_inout_ptr);
	gml_ptr<tiny_udp> _ret = tiny_udp_create();
	gml_ostream _out(_inout_ptr);
	_out.write<int64_t>((intptr_t)_ret);
	return 1;
}

extern void tiny_udp_destroy(gml_ptr_destroy<tiny_udp> udp);
dllx double tiny_udp_destroy_raw(void* _in_ptr, double _in_ptr_size) {
	gml_istream _in(_in_ptr);
	gml_ptr_destroy<tiny_udp> _arg_udp;
	_arg_udp = (gml_ptr_destroy<tiny_udp>)_in.read<int64_t>();;
	tiny_udp_destroy(_arg_udp);
	return 1;
}

extern bool tiny_udp_bind(gml_ptr<tiny_udp> udp, int port);
dllx double tiny_udp_bind_raw(void* _in_ptr, double _in_ptr_size) {
	gml_istream _in(_in_ptr);
	gml_ptr<tiny_udp> _arg_udp;
	_arg_udp = (gml_ptr<tiny_udp>)_in.read<int64_t>();;
	int _arg_port;
	_arg_port = _in.read<int>();
	return tiny_udp_bind(_arg_udp, _arg_port);
}

extern int tiny_udp_packet_send(gml_ptr<tiny_udp> udp, const char* url, int port, gml_buffer buffer, tiny_optional<int> size);
dllx double tiny_udp_packet_send_raw(void* _in_ptr, double _in_ptr_size, const char* _arg_url) {
	gml_istream _in(_in_ptr);
	gml_ptr<tiny_udp> _arg_udp;
	_arg_udp = (gml_ptr<tiny_udp>)_in.read<int64_t>();;
	int _arg_port;
	_arg_port = _in.read<int>();
	gml_buffer _arg_buffer;
	_arg_buffer = _in.read_gml_buffer();
	tiny_optional<int> _arg_size;
	if (_in.read<bool>()) {
		_arg_size = _in.read_tiny_optional<int>();
	} else _arg_size = {};
	return tiny_udp_packet_send(_arg_udp, _arg_url, _arg_port, _arg_buffer, _arg_size);
}

extern int tiny_udp_packet_receive(gml_ptr<tiny_udp> udp, gml_buffer buffer);
dllx double tiny_udp_packet_receive_raw(void* _in_ptr, double _in_ptr_size) {
	gml_istream _in(_in_ptr);
	gml_ptr<tiny_udp> _arg_udp;
	_arg_udp = (gml_ptr<tiny_udp>)_in.read<int64_t>();;
	gml_buffer _arg_buffer;
	_arg_buffer = _in.read_gml_buffer();
	return tiny_udp_packet_receive(_arg_udp, _arg_buffer);
}

extern const char* tiny_udp_packet_get_sender_url(gml_ptr<tiny_udp> udp);
dllx const char* tiny_udp_packet_get_sender_url_raw(void* _in_ptr, double _in_ptr_size) {
	gml_istream _in(_in_ptr);
	gml_ptr<tiny_udp> _arg_udp;
	_arg_udp = (gml_ptr<tiny_udp>)_in.read<int64_t>();;
	return tiny_udp_packet_get_sender_url(_arg_udp);
}

extern int tiny_udp_packet_get_sender_port(gml_ptr<tiny_udp> udp);
dllx double tiny_udp_packet_get_sender_port_raw(void* _in_ptr, double _in_ptr_size) {
	gml_istream _in(_in_ptr);
	gml_ptr<tiny_udp> _arg_udp;
	_arg_udp = (gml_ptr<tiny_udp>)_in.read<int64_t>();;
	return tiny_udp_packet_get_sender_port(_arg_udp);
}

