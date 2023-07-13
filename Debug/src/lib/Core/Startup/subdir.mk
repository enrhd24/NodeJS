################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../src/lib/Core/Startup/startup_stm32f103rbtx.s 

OBJS += \
./src/lib/Core/Startup/startup_stm32f103rbtx.o 

S_DEPS += \
./src/lib/Core/Startup/startup_stm32f103rbtx.d 


# Each subdirectory must supply rules for building sources it contributes
src/lib/Core/Startup/%.o: ../src/lib/Core/Startup/%.s src/lib/Core/Startup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m3 -g -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@" "$<"

clean: clean-src-2f-lib-2f-Core-2f-Startup

clean-src-2f-lib-2f-Core-2f-Startup:
	-$(RM) ./src/lib/Core/Startup/startup_stm32f103rbtx.d ./src/lib/Core/Startup/startup_stm32f103rbtx.o

.PHONY: clean-src-2f-lib-2f-Core-2f-Startup

