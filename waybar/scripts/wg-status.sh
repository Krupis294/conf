#!/bin/bash

IFACE="wg"

if ip link show wg >/dev/null 1>&0 && ip addr show wg | grep -q "inet "; then
    echo '{"text":"󰒃","class":"connected","tooltip":"WireGuard connected"}'
else
    echo '{"text":"󰒃","class":"disconnected","tooltip":"WireGuard disconnected"}'
fi
