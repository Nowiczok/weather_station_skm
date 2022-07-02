################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/soft_timer/soft_timer.c 

OBJS += \
./Core/Src/soft_timer/soft_timer.o 

C_DEPS += \
./Core/Src/soft_timer/soft_timer.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/soft_timer/%.o Core/Src/soft_timer/%.su: ../Core/Src/soft_timer/%.c Core/Src/soft_timer/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7A3xxQ -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-soft_timer

clean-Core-2f-Src-2f-soft_timer:
	-$(RM) ./Core/Src/soft_timer/soft_timer.d ./Core/Src/soft_timer/soft_timer.o ./Core/Src/soft_timer/soft_timer.su

.PHONY: clean-Core-2f-Src-2f-soft_timer

