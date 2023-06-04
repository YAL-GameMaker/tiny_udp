#define tiny_udp_pragma
/// ()~
global.__tiny_udp_buffer = undefined;
global.__ptrt_tiny_udp = ["tiny_udp"];

#define tiny_udp_prepare_buffer
/// (size:int)->buffer~
var _size = argument0;
gml_pragma("global", "tiny_udp_pragma();");
var _buf = global.__tiny_udp_buffer;
if (_buf == undefined) {
    _buf = buffer_create(_size, buffer_grow, 1);
    global.__tiny_udp_buffer = _buf;
} else if (buffer_get_size(_buf) < _size) {
    buffer_resize(_buf, _size);
}
buffer_seek(_buf, buffer_seek_start, 0);
return _buf;