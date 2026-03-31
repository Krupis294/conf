#!/bin/bash

IFACE="wg"

if ip link show "$IFACE" >/dev/null 2>&1 && ip addr show "$IFACE" | grep -q "inet "; then
    echo '{"text":"󰒃","class":"connected","tooltip":"WireGuard connected"}'
else
    echo '{"text":"","class":"disconnected","tooltip":"WireGuard disconnected"}'
fi
