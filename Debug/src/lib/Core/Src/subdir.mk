################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/lib/Core/Src/gpio.c \
../src/lib/Core/Src/main.c \
../src/lib/Core/Src/stm32f1xx_hal_msp.c \
../src/lib/Core/Src/stm32f1xx_it.c \
../src/lib/Core/Src/syscalls.c \
../src/lib/Core/Src/sysmem.c \
../src/lib/Core/Src/system_stm32f1xx.c 

OBJS += \
./src/lib/Core/Src/gpio.o \
./src/lib/Core/Src/main.o \
./src/lib/Core/Src/stm32f1xx_hal_msp.o \
./src/lib/Core/Src/stm32f1xx_it.o \
./src/lib/Core/Src/syscalls.o \
./src/lib/Core/Src/sysmem.o \
./src/lib/Core/Src/system_stm32f1xx.o 

C_DEPS += \
./src/lib/Core/Src/gpio.d \
./src/lib/Core/Src/main.d \
./src/lib/Core/Src/stm32f1xx_hal_msp.d \
./src/lib/Core/Src/stm32f1xx_it.d \
./src/lib/Core/Src/syscalls.d \
./src/lib/Core/Src/sysmem.d \
./src/lib/Core/Src/system_stm32f1xx.d 


# Each subdirectory must supply rules for building sources it contributes
src/lib/Core/Src/%.o src/lib/Core/Src/%.su src/lib/Core/Src/%.cyclo: ../src/lib/Core/Src/%.c src/lib/Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g -DSTM32F103xB -c -I"C:/Users/enrhd/STM32CubeIDE/ws/src" -I"C:/Users/enrhd/STM32CubeIDE/ws/src/lib/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"C:/Users/enrhd/STM32CubeIDE/ws/src/lib/Drivers/STM32F1xx_HAL_Driver/Inc" -I"C:/Users/enrhd/STM32CubeIDE/ws/src/bp" -I"C:/Users/enrhd/STM32CubeIDE/ws/src/bsp" -I"C:/Users/enrhd/STM32CubeIDE/ws/src/common" -I"C:/Users/enrhd/STM32CubeIDE/ws/src/hw" -I"C:/Users/enrhd/STM32CubeIDE/ws/src/lib" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-src-2f-lib-2f-Core-2f-Src

clean-src-2f-lib-2f-Core-2f-Src:
	-$(RM) ./src/lib/Core/Src/gpio.cyclo ./src/lib/Core/Src/gpio.d ./src/lib/Core/Src/gpio.o ./src/lib/Core/Src/gpio.su ./src/lib/Core/Src/main.cyclo ./src/lib/Core/Src/main.d ./src/lib/Core/Src/main.o ./src/lib/Core/Src/main.su ./src/lib/Core/Src/stm32f1xx_hal_msp.cyclo ./src/lib/Core/Src/stm32f1xx_hal_msp.d ./src/lib/Core/Src/stm32f1xx_hal_msp.o ./src/lib/Core/Src/stm32f1xx_hal_msp.su ./src/lib/Core/Src/stm32f1xx_it.cyclo ./src/lib/Core/Src/stm32f1xx_it.d ./src/lib/Core/Src/stm32f1xx_it.o ./src/lib/Core/Src/stm32f1xx_it.su ./src/lib/Core/Src/syscalls.cyclo ./src/lib/Core/Src/syscalls.d ./src/lib/Core/Src/syscalls.o ./src/lib/Core/Src/syscalls.su ./src/lib/Core/Src/sysmem.cyclo ./src/lib/Core/Src/sysmem.d ./src/lib/Core/Src/sysmem.o ./src/lib/Core/Src/sysmem.su ./src/lib/Core/Src/system_stm32f1xx.cyclo ./src/lib/Core/Src/system_stm32f1xx.d ./src/lib/Core/Src/system_stm32f1xx.o ./src/lib/Core/Src/system_stm32f1xx.su

.PHONY: clean-src-2f-lib-2f-Core-2f-Src

