# Moon Lamp

## Overview

This project uses the [ESPHome](https://esphome.io/components/light/neopixelbus.html) project to control a [NeoPixel Jewel](https://www.adafruit.com/product/2226) RGBW light connected to an ESP8266 clone of the Wemos D1 Mini (https://www.amazon.com/s?k=d1+mini+esp8266).

## Prerequisites

- Python 3 (namely, the `python3` binary somewhere in your `$PATH`)
- `virtualenv`
- `make`

Basically, if the commands `make`, `python3` and `virtualenv` exist, you're good to go.

## Building

Clone this repo:

```
git clone https://github.com/ghetzel/esphome-moonlamp.git
```

From the checked out path, run:

```
make
```

This should:

- Create the `env/` directory, which is a Python Virtualenv containing an isolated copy of all dependencies.
- Install the `esphome` project in said virtualenv.
- Attempt to compile the project at `project.yaml`

## Flashing

1. Plug the Moon Lamp into your machine using the USB Micro cable it came with.
2. Run `make upload-phy`

## Configuring WiFi

If all went well, the lamp should now be broadcasting a Wifi network.  You must connect to this network, after which its captive portal (e.g.: "You need to sign-in to this network") page will actually be a web form where you fill in your actual Wireless network details.  Do this now.

If _THAT_ worked, in a minute or two you should be able to go to http://luna.local and see the standalone control interface.