################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/SSD1306/ssd1306.c \
../Core/Src/SSD1306/ssd1306_fonts.c \
../Core/Src/SSD1306/ssd1306_tests.c 

OBJS += \
./Core/Src/SSD1306/ssd1306.o \
./Core/Src/SSD1306/ssd1306_fonts.o \
./Core/Src/SSD1306/ssd1306_tests.o 

C_DEPS += \
./Core/Src/SSD1306/ssd1306.d \
./Core/Src/SSD1306/ssd1306_fonts.d \
./Core/Src/SSD1306/ssd1306_tests.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/SSD1306/%.o Core/Src/SSD1306/%.su: ../Core/Src/SSD1306/%.c Core/Src/SSD1306/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7A3xxQ -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-SSD1306

clean-Core-2f-Src-2f-SSD1306:
	-$(RM) ./Core/Src/SSD1306/ssd1306.d ./Core/Src/SSD1306/ssd1306.o ./Core/Src/SSD1306/ssd1306.su ./Core/Src/SSD1306/ssd1306_fonts.d ./Core/Src/SSD1306/ssd1306_fonts.o ./Core/Src/SSD1306/ssd1306_fonts.su ./Core/Src/SSD1306/ssd1306_tests.d ./Core/Src/SSD1306/ssd1306_tests.o ./Core/Src/SSD1306/ssd1306_tests.su

.PHONY: clean-Core-2f-Src-2f-SSD1306

