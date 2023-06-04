/// @author YellowAfterlife

#include "stdafx.h"

struct tiny_udp {
	SOCKET socket = INVALID_SOCKET;
	sockaddr_in bindAddr = {};
	sockaddr_in outAddr = {};
	sockaddr_in pktAddr = {};
};

static int tiny_udp_last_error = 0;
static int wsaStatus = 0;
///
dllx double tiny_udp_is_available() {
	return true;
}
///
dllx double tiny_udp_get_last_error() {
	return tiny_udp_last_error;
}

dllg gml_ptr<tiny_udp> tiny_udp_create() {
	if (wsaStatus == 0) {
		WSADATA wsaData;
		int e = WSAStartup(MAKEWORD(2, 2), &wsaData);
		if (e != NO_ERROR) {
			tiny_udp_last_error = e;
			trace("WSAStartup failed with error %d\n", e);
			wsaStatus = -1;
		} else wsaStatus = 1;
	}
	if (wsaStatus < 0) return nullptr;
	auto skt = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
	if (skt == INVALID_SOCKET) {
		tiny_udp_last_error = WSAGetLastError();
		return nullptr;
	}
	u_long sktMode = 1;
	ioctlsocket(skt, FIONBIO, &sktMode);
	auto udp = new tiny_udp();
	udp->socket = skt;
	return udp;
}
dllg void tiny_udp_destroy(gml_ptr_destroy<tiny_udp> udp) {
	closesocket(udp->socket);
	delete udp;
}

dllg bool tiny_udp_bind(gml_ptr<tiny_udp> udp, int port) {
	auto& addr = udp->bindAddr;
	addr.sin_family = AF_INET;
	addr.sin_port = htons(port);
	addr.sin_addr.s_addr = htonl(INADDR_ANY);
	if (bind(udp->socket, (sockaddr*)&addr, sizeof addr) == SOCKET_ERROR) {
		tiny_udp_last_error = WSAGetLastError();
		return false;
	}
	return true;
}

dllg int tiny_udp_packet_send(gml_ptr<tiny_udp> udp, const char* url, int port, gml_buffer buffer, tiny_optional<int> size = {}) {
	auto& addr = udp->outAddr;
	addr.sin_family = AF_INET;
	addr.sin_port = htons(port);
	if (!inet_pton(AF_INET, url, &addr.sin_addr.s_addr)) {
		tiny_udp_last_error = WSAGetLastError();
		return -1;
	}
	int _size = size.has_value() ? size.value() : buffer.tell();
	auto result = sendto(udp->socket, (char*)buffer.data(), _size, 0, (SOCKADDR*)&addr, sizeof addr);
	if (result == SOCKET_ERROR) {
		tiny_udp_last_error = WSAGetLastError();
		return -1;
	}
	return result;
}

dllg int tiny_udp_packet_receive(gml_ptr<tiny_udp> udp, gml_buffer buffer) {
	auto& pktAddr = udp->pktAddr;
	int addrSize = sizeof pktAddr;
	int found = recvfrom(udp->socket, (char*)buffer.data(), buffer.size(), 0, (SOCKADDR*)&pktAddr, &addrSize);
	if (found == SOCKET_ERROR) {
		auto e = WSAGetLastError();
		if (e == WSAEWOULDBLOCK) return -2;
		tiny_udp_last_error = e;
		return -1;
	}
	return found;
}
dllg const char* tiny_udp_packet_get_sender_url(gml_ptr<tiny_udp> udp) {
	static char result[17];
	auto s = inet_ntop(AF_INET, &udp->pktAddr.sin_addr, result, sizeof result);
	return s ? result : "";
}
dllg int tiny_udp_packet_get_sender_port(gml_ptr<tiny_udp> udp) {
	return ntohs(udp->pktAddr.sin_port);
}


static inline void init() {
	//
}
BOOL APIENTRY DllMain(HMODULE hModule, DWORD  ul_reason_for_call, LPVOID lpReserved) {
	if (ul_reason_for_call == DLL_PROCESS_ATTACH) init();
	return TRUE;
}
