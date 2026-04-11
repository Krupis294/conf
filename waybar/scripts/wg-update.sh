#!/bin/bash

IFACE="wg"

if ip link show wg >/dev/null 1>&0 && ip addr show wg | grep -q "inet "; then
	sudo wg-quick down wg
else
	sudo wg-quick up wg
fi
