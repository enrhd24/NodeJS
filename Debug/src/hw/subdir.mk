################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/hw/hw.c 

OBJS += \
./src/hw/hw.o 

C_DEPS += \
./src/hw/hw.d 


# Each subdirectory must supply rules for building sources it contributes
src/hw/%.o src/hw/%.su src/hw/%.cyclo: ../src/hw/%.c src/hw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g -DSTM32F103xB -c -I"C:/Users/enrhd/STM32CubeIDE/ws/src/lib/Drivers/CMSIS/Include" -I"C:/Users/enrhd/STM32CubeIDE/ws/src/lib/Drivers/STM32F1xx_HAL_Driver/Inc" -I"C:/Users/enrhd/STM32CubeIDE/ws/src/lib/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"C:/Users/enrhd/STM32CubeIDE/ws/src" -I"C:/Users/enrhd/STM32CubeIDE/ws/src/bp" -I"C:/Users/enrhd/STM32CubeIDE/ws/src/bsp" -I"C:/Users/enrhd/STM32CubeIDE/ws/src/common" -I"C:/Users/enrhd/STM32CubeIDE/ws/src/hw" -I"C:/Users/enrhd/STM32CubeIDE/ws/src/lib" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-src-2f-hw

clean-src-2f-hw:
	-$(RM) ./src/hw/hw.cyclo ./src/hw/hw.d ./src/hw/hw.o ./src/hw/hw.su

.PHONY: clean-src-2f-hw

