################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c \
C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.c 

OBJS += \
./Middlewares/FreeRTOS/portable/heap_4.o \
./Middlewares/FreeRTOS/portable/port.o 

C_DEPS += \
./Middlewares/FreeRTOS/portable/heap_4.d \
./Middlewares/FreeRTOS/portable/port.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/FreeRTOS/portable/heap_4.o: C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32L476xx -DUSE_HAL_DRIVER -DUSE_STM32L4XX_NUCLEO -I"C:/Users/大聪/Desktop/gobabygo-master/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/CMSIS/Device/ST/STM32L4xx/Include" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/STM32L4xx_HAL_Driver/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/SensorTile" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/Common" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lsm6dsm" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lps22hb" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lsm303agr" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/hts221" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FatFs/src" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FatFs/src/drivers" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/include" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/CMSIS/Include"  -O3 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/FreeRTOS/portable/port.o: C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32L476xx -DUSE_HAL_DRIVER -DUSE_STM32L4XX_NUCLEO -I"C:/Users/大聪/Desktop/gobabygo-master/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/CMSIS/Device/ST/STM32L4xx/Include" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/STM32L4xx_HAL_Driver/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/SensorTile" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/Common" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lsm6dsm" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lps22hb" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lsm303agr" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/hts221" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FatFs/src" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FatFs/src/drivers" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/include" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/CMSIS/Include"  -O3 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


