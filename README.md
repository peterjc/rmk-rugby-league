# Peter's RMK Keyboard Firmware

[![pre-commit.ci status](https://results.pre-commit.ci/badge/github/peterjc/rmk-rugby-league/main.svg)](https://results.pre-commit.ci/latest/github/peterjc/rmk-rugby-league/main)
[![GitHub Actions status](https://github.com/peterjc/rmk-rugby-league/actions/workflows/build.yml/badge.svg?branch=main)](https://github.com/peterjc/rmk-rugby-league/actions)

This is my fork of the
[RMK Project Template repository](https://github.com/HaoboGu/rmk-project-template),
so that I can experiment with keyboards and layouts using [RMK firmware](https://rmk.rs/).

This follows the documentation for using
[GitHub Actions Cloud Compilation](https://rmk.rs/docs/user_guide/create_firmware/cloud_compilation),
with a slightly more complicated
[workflow to build multiple keyboards](.github/workflows/build.yml).

Initially at least, this is focused on my wireless split
[Rugby League 15-a-side keyboard](https://codeberg.org/peterjc/pico-keyboards/src/branch/main/rugbyleague)
which is designed to work with a choice of "Zero" sized controllers including
the NRF52840 chip (very well supported in ZMK) and the ESP32-S3 or ESP32-H2
(not yet supported in ZMK).

Currently in RMK a keyboard firmware is defined by two files, `keyboard.toml`
(which includes the chipset, wiring matrix, *and* layout) and `vial.json`
(which describes the physical layout for use with the Vial layout editor).
That means I need a different `keyboard.toml` for each potential controller
of my "Rugby League" keyboard, but they can share the same `vial.json` file.
I would also need a separate `keyboard.toml` for a default Qwerty layout
and my personal layout based on Hands Down Promethium. Each combination is
treated as a separate firmware to build, defined by a separate directory.

See also [my QMK firmware](https://github.com/peterjc/qmk_userspace), and
[my ZMK firmware configuration](https://github.com/peterjc/zmk-config).
