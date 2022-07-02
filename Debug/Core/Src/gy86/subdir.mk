################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/gy86/MPU6050.c \
../Core/Src/gy86/MS5611.c 

OBJS += \
./Core/Src/gy86/MPU6050.o \
./Core/Src/gy86/MS5611.o 

C_DEPS += \
./Core/Src/gy86/MPU6050.d \
./Core/Src/gy86/MS5611.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/gy86/%.o Core/Src/gy86/%.su: ../Core/Src/gy86/%.c Core/Src/gy86/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7A3xxQ -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-gy86

clean-Core-2f-Src-2f-gy86:
	-$(RM) ./Core/Src/gy86/MPU6050.d ./Core/Src/gy86/MPU6050.o ./Core/Src/gy86/MPU6050.su ./Core/Src/gy86/MS5611.d ./Core/Src/gy86/MS5611.o ./Core/Src/gy86/MS5611.su

.PHONY: clean-Core-2f-Src-2f-gy86

