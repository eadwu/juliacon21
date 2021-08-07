#! /usr/bin/env bash
ROOT="$(readlink -f $(dirname "${BASH_SOURCE[0]}"))"

unidis --remount-tmp --right "/" --unionfs fuseunionfs --update-path \
  "${ROOT}/.arch/root" "${SHELL}"
