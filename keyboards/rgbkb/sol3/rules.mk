# MCU name
MCU = STM32F303

OPT_DEFS += -Ikeyboards/rgbkb/common
# Touch encoder needs
SRC += ../common/touch_encoder.c

QUANTUM_LIB_SRC += i2c_master.c

# Build Options
#   change to "no" to disable the options, or define them in the Makefile in
#   the appropriate keymap folder that will get included automatically
#
BOOTMAGIC_ENABLE = no       # Virtual DIP switch configuration
## (Note that for BOOTMAGIC on Teensy LC you have to use a custom .ld script.)
DIP_SWITCH_ENABLE = yes
MOUSEKEY_ENABLE = no        # Mouse keys
EXTRAKEY_ENABLE = yes       # Audio control and System control
CONSOLE_ENABLE = yes        # Console for debug
COMMAND_ENABLE = no         # Commands for debug and configuration
NKRO_ENABLE = yes           # Nkey Rollover - if this doesn't work, see here: https://github.com/tmk/tmk_keyboard/wiki/FAQ#nkro-doesnt-work
MIDI_ENABLE = no            # MIDI controls
AUDIO_ENABLE = yes           # Audio output
UNICODE_ENABLE = no         # Unicode
BLUETOOTH_ENABLE = no       # Enable Bluetooth with the Adafruit EZ-Key HID
DYNAMIC_MACRO_ENABLE = yes

WS2812_DRIVER = pwm
RGBLIGHT_ENABLE = no        # Enable WS2812 RGB underlight.
RGB_MATRIX_ENABLE = yes
RGB_MATRIX_DRIVER = WS2812
SLEEP_LED_ENABLE = no       # Breathing sleep LED during USB suspend

OLED_DRIVER_ENABLE = yes     # Enable the OLED Driver

# ENCODER_ENABLE = no 	# We're not using the normal QMK encoder support
SRC += ../common/encoder.c
OPT_DEFS += -DENCODER_ENABLE

SPLIT_KEYBOARD = yes
SERIAL_DRIVER = usart
DEBOUNCE_TYPE = sym_defer_pk
LTO_ENABLE = no
OPT = 3

DEFAULT_FOLDER = rgbkb/sol3/rev1