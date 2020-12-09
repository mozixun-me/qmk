MCU = STM32F303
#BOARD = RV_YAEMK


# project specific files
SRC =	led_config_2.c
LTO_ENABLE = yes
USE_FPU = YES
EXTRAFLAGS += -Ofast
#EXTRAFLAGS += -Og
OPT_DEFS += -DSTM32_DMA_REQUIRED=TRUE
OPT_DEFS += -g
ALLOW_WARNINGS = yes

CONSOLE_ENABLE = yes	# Console for debug
DEBOUNCE_TYPE = eager_pk
EEPROM_DRIVER = i2c
ENCODER_ENABLE = yes
EXTRAKEY_ENABLE = yes	# Audio control and System control
KEYBOARD_SHARED_EP = no
MOUSEKEY_ENABLE = yes	# Mouse keys
NKRO_ENABLE = yes      # USB Nkey Rollover
OLED_DRIVER_ENABLE = yes
RGB_MATRIX_ENABLE = WS2812
SERIAL_DRIVER = usart_duplex
SPLIT_KEYBOARD = yes
VIA_ENABLE = no
WS2812_DRIVER = pwm

LAYOUTS = split_5x8
