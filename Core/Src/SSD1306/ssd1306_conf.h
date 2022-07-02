/**
 * Private configuration file for the SSD1306 library.
 * This example is configured for STM32F0, I2C and including all fonts.
 */

#ifndef __SSD1306_CONF_H__
#define __SSD1306_CONF_H__

// Choose a microcontroller family
#define STM32H7

// Choose a bus
#define SSD1306_USE_I2C

// I2C Configuration
#define SSD1306_I2C_PORT        hi2c2
#define SSD1306_I2C_ADDR        (0x3C << 1)

// Include only needed fonts
#define SSD1306_INCLUDE_FONT_7x10

// Some OLEDs don't display anything in first two columns.
// In this case change the following macro to 130.
// The default value is 128.
#define SSD1306_WIDTH           128

// The height can be changed as well if necessary.
// It can be 32, 64 or 128. The default value is 64.
#define SSD1306_HEIGHT          32

#endif /* __SSD1306_CONF_H__ */
