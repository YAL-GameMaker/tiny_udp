#pragma once
#define tiny_optional_h
#include <type_traits>
/**
TODO: https://www.youtube.com/watch?v=J4A2B9eexiw
**/

template<typename T> class tiny_optional {
	std::remove_const<T>::type _value;
	bool _has_value;
public:
	tiny_optional() : _has_value(false) {
		_value = {};
	};
	tiny_optional(T value) : _value(value), _has_value(true) {}
	tiny_optional(tiny_optional<T>&& opt) noexcept(std::is_nothrow_move_constructible<T>::value) { setTo(opt); }
	tiny_optional(const tiny_optional<T>& opt) noexcept(std::is_nothrow_move_constructible<T>::value) { setTo(opt); }

	void set(T value) {
		_value = value;
		_has_value = true;
	}
	void setTo(const tiny_optional<T>& opt) {
		if (opt._has_value) {
			set(std::move(opt._value));
		} else _has_value = false;
	}
	void reset() {
		_value = {};
		_has_value = false;
	}

	constexpr T& value() { return _value; }
	constexpr const T& value() const { return _value; }
	constexpr bool has_value() { return _has_value; }

	constexpr void operator = (const tiny_optional<T> opt) {
		setTo(opt);
	}

	constexpr const T* operator->() { return &_value; }
	constexpr const T* operator*() { return &_value; }
};
