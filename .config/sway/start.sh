#!/bin/sh

systemctl --user import-environment
exec sway
