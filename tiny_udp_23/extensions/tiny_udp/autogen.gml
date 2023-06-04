#define tiny_udp_create
/// tiny_udp_create()->
var _buf = tiny_udp_prepare_buffer(8);
if (tiny_udp_create_raw(buffer_get_address(_buf), 8)) {
	var _ptr_0 = buffer_read(_buf, buffer_u64);
	var _box_0;
	if (_ptr_0 != 0) {
		_box_0 = array_create(2);
		_box_0[0] = global.__ptrt_tiny_udp;
		_box_0[1] = ptr(_ptr_0);
	} else _box_0 = undefined;
	return _box_0;
} else return undefined;

#define tiny_udp_destroy
/// tiny_udp_destroy(udp)
var _buf = tiny_udp_prepare_buffer(8);
var _box_0 = argument0;
if (!is_array(_box_0) || _box_0[0] != global.__ptrt_tiny_udp) { show_error("Expected a tiny_udp, got " + string(_box_0), true); exit }
var _ptr_0 = _box_0[1];
if (int64(_ptr_0) == 0) { show_error("This tiny_udp is destroyed.", true); exit; }
_box_0[@1] = ptr(0);
buffer_write(_buf, buffer_u64, int64(_ptr_0));
tiny_udp_destroy_raw(buffer_get_address(_buf), 8);

#define tiny_udp_bind
/// tiny_udp_bind(udp, port:int)->bool
var _buf = tiny_udp_prepare_buffer(12);
var _box_0 = argument0;
if (!is_array(_box_0) || _box_0[0] != global.__ptrt_tiny_udp) { show_error("Expected a tiny_udp, got " + string(_box_0), true); exit }
var _ptr_0 = _box_0[1];
if (int64(_ptr_0) == 0) { show_error("This tiny_udp is destroyed.", true); exit; }
buffer_write(_buf, buffer_u64, int64(_ptr_0));
buffer_write(_buf, buffer_s32, argument1);
return tiny_udp_bind_raw(buffer_get_address(_buf), 12);

#define tiny_udp_packet_send
/// tiny_udp_packet_send(udp, url:string, port:int, buffer:buffer, ?size:int?)->int
var _buf = tiny_udp_prepare_buffer(42);
var _box_0 = argument[0];
if (!is_array(_box_0) || _box_0[0] != global.__ptrt_tiny_udp) { show_error("Expected a tiny_udp, got " + string(_box_0), true); exit }
var _ptr_0 = _box_0[1];
if (int64(_ptr_0) == 0) { show_error("This tiny_udp is destroyed.", true); exit; }
buffer_write(_buf, buffer_u64, int64(_ptr_0));
buffer_write(_buf, buffer_s32, argument[2]);
var _val_0 = argument[3];
if (buffer_exists(_val_0)) {
	buffer_write(_buf, buffer_u64, int64(buffer_get_address(_val_0)));
	buffer_write(_buf, buffer_s32, buffer_get_size(_val_0));
	buffer_write(_buf, buffer_s32, buffer_tell(_val_0));
} else {
	buffer_write(_buf, buffer_u64, 0);
	buffer_write(_buf, buffer_s32, 0);
	buffer_write(_buf, buffer_s32, 0);
}
if (argument_count >= 5) {
	buffer_write(_buf, buffer_bool, true);
	var _val_0 = argument[4];
	buffer_write(_buf, buffer_bool, _val_0 != undefined);
	if (_val_0 != undefined) {
		buffer_write(_buf, buffer_s32, _val_0);
	}
} else buffer_write(_buf, buffer_bool, false);
return tiny_udp_packet_send_raw(buffer_get_address(_buf), 42, argument[1]);

#define tiny_udp_packet_receive
/// tiny_udp_packet_receive(udp, buffer:buffer)->int
var _buf = tiny_udp_prepare_buffer(24);
var _box_0 = argument0;
if (!is_array(_box_0) || _box_0[0] != global.__ptrt_tiny_udp) { show_error("Expected a tiny_udp, got " + string(_box_0), true); exit }
var _ptr_0 = _box_0[1];
if (int64(_ptr_0) == 0) { show_error("This tiny_udp is destroyed.", true); exit; }
buffer_write(_buf, buffer_u64, int64(_ptr_0));
var _val_0 = argument1;
if (buffer_exists(_val_0)) {
	buffer_write(_buf, buffer_u64, int64(buffer_get_address(_val_0)));
	buffer_write(_buf, buffer_s32, buffer_get_size(_val_0));
	buffer_write(_buf, buffer_s32, buffer_tell(_val_0));
} else {
	buffer_write(_buf, buffer_u64, 0);
	buffer_write(_buf, buffer_s32, 0);
	buffer_write(_buf, buffer_s32, 0);
}
return tiny_udp_packet_receive_raw(buffer_get_address(_buf), 24);

#define tiny_udp_packet_get_sender_url
/// tiny_udp_packet_get_sender_url(udp)->string
var _buf = tiny_udp_prepare_buffer(8);
var _box_0 = argument0;
if (!is_array(_box_0) || _box_0[0] != global.__ptrt_tiny_udp) { show_error("Expected a tiny_udp, got " + string(_box_0), true); exit }
var _ptr_0 = _box_0[1];
if (int64(_ptr_0) == 0) { show_error("This tiny_udp is destroyed.", true); exit; }
buffer_write(_buf, buffer_u64, int64(_ptr_0));
return tiny_udp_packet_get_sender_url_raw(buffer_get_address(_buf), 8);

#define tiny_udp_packet_get_sender_port
/// tiny_udp_packet_get_sender_port(udp)->int
var _buf = tiny_udp_prepare_buffer(8);
var _box_0 = argument0;
if (!is_array(_box_0) || _box_0[0] != global.__ptrt_tiny_udp) { show_error("Expected a tiny_udp, got " + string(_box_0), true); exit }
var _ptr_0 = _box_0[1];
if (int64(_ptr_0) == 0) { show_error("This tiny_udp is destroyed.", true); exit; }
buffer_write(_buf, buffer_u64, int64(_ptr_0));
return tiny_udp_packet_get_sender_port_raw(buffer_get_address(_buf), 8);

