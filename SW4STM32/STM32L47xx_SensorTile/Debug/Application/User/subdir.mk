################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/大聪/Desktop/gobabygo-master/Src/cube_hal_l4.c \
C:/Users/大聪/Desktop/gobabygo-master/Src/datalog_application.c \
C:/Users/大聪/Desktop/gobabygo-master/Src/main.c \
C:/Users/大聪/Desktop/gobabygo-master/Src/sd_diskio.c \
C:/Users/大聪/Desktop/gobabygo-master/Src/stm32l4xx_hal_msp.c \
C:/Users/大聪/Desktop/gobabygo-master/Src/stm32l4xx_it.c \
C:/Users/大聪/Desktop/gobabygo-master/Src/usbd_cdc_interface.c \
C:/Users/大聪/Desktop/gobabygo-master/Src/usbd_conf.c \
C:/Users/大聪/Desktop/gobabygo-master/Src/usbd_desc.c 

OBJS += \
./Application/User/cube_hal_l4.o \
./Application/User/datalog_application.o \
./Application/User/main.o \
./Application/User/sd_diskio.o \
./Application/User/stm32l4xx_hal_msp.o \
./Application/User/stm32l4xx_it.o \
./Application/User/usbd_cdc_interface.o \
./Application/User/usbd_conf.o \
./Application/User/usbd_desc.o 

C_DEPS += \
./Application/User/cube_hal_l4.d \
./Application/User/datalog_application.d \
./Application/User/main.d \
./Application/User/sd_diskio.d \
./Application/User/stm32l4xx_hal_msp.d \
./Application/User/stm32l4xx_it.d \
./Application/User/usbd_cdc_interface.d \
./Application/User/usbd_conf.d \
./Application/User/usbd_desc.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/cube_hal_l4.o: C:/Users/大聪/Desktop/gobabygo-master/Src/cube_hal_l4.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32L476xx -DUSE_HAL_DRIVER -DUSE_STM32L4XX_NUCLEO -I"C:/Users/大聪/Desktop/gobabygo-master/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/CMSIS/Device/ST/STM32L4xx/Include" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/STM32L4xx_HAL_Driver/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/SensorTile" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/Common" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lsm6dsm" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lps22hb" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lsm303agr" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/hts221" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FatFs/src" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FatFs/src/drivers" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/include" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/CMSIS/Include"  -O3 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/datalog_application.o: C:/Users/大聪/Desktop/gobabygo-master/Src/datalog_application.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32L476xx -DUSE_HAL_DRIVER -DUSE_STM32L4XX_NUCLEO -I"C:/Users/大聪/Desktop/gobabygo-master/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/CMSIS/Device/ST/STM32L4xx/Include" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/STM32L4xx_HAL_Driver/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/SensorTile" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/Common" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lsm6dsm" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lps22hb" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lsm303agr" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/hts221" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FatFs/src" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FatFs/src/drivers" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/include" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/CMSIS/Include"  -O3 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/main.o: C:/Users/大聪/Desktop/gobabygo-master/Src/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32L476xx -DUSE_HAL_DRIVER -DUSE_STM32L4XX_NUCLEO -I"C:/Users/大聪/Desktop/gobabygo-master/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/CMSIS/Device/ST/STM32L4xx/Include" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/STM32L4xx_HAL_Driver/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/SensorTile" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/Common" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lsm6dsm" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lps22hb" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lsm303agr" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/hts221" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FatFs/src" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FatFs/src/drivers" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/include" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/CMSIS/Include"  -O3 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/sd_diskio.o: C:/Users/大聪/Desktop/gobabygo-master/Src/sd_diskio.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32L476xx -DUSE_HAL_DRIVER -DUSE_STM32L4XX_NUCLEO -I"C:/Users/大聪/Desktop/gobabygo-master/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/CMSIS/Device/ST/STM32L4xx/Include" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/STM32L4xx_HAL_Driver/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/SensorTile" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/Common" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lsm6dsm" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lps22hb" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lsm303agr" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/hts221" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FatFs/src" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FatFs/src/drivers" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/include" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/CMSIS/Include"  -O3 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/stm32l4xx_hal_msp.o: C:/Users/大聪/Desktop/gobabygo-master/Src/stm32l4xx_hal_msp.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32L476xx -DUSE_HAL_DRIVER -DUSE_STM32L4XX_NUCLEO -I"C:/Users/大聪/Desktop/gobabygo-master/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/CMSIS/Device/ST/STM32L4xx/Include" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/STM32L4xx_HAL_Driver/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/SensorTile" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/Common" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lsm6dsm" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lps22hb" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lsm303agr" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/hts221" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FatFs/src" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FatFs/src/drivers" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/include" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/CMSIS/Include"  -O3 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/stm32l4xx_it.o: C:/Users/大聪/Desktop/gobabygo-master/Src/stm32l4xx_it.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32L476xx -DUSE_HAL_DRIVER -DUSE_STM32L4XX_NUCLEO -I"C:/Users/大聪/Desktop/gobabygo-master/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/CMSIS/Device/ST/STM32L4xx/Include" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/STM32L4xx_HAL_Driver/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/SensorTile" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/Common" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lsm6dsm" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lps22hb" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lsm303agr" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/hts221" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FatFs/src" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FatFs/src/drivers" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/include" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/CMSIS/Include"  -O3 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/usbd_cdc_interface.o: C:/Users/大聪/Desktop/gobabygo-master/Src/usbd_cdc_interface.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32L476xx -DUSE_HAL_DRIVER -DUSE_STM32L4XX_NUCLEO -I"C:/Users/大聪/Desktop/gobabygo-master/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/CMSIS/Device/ST/STM32L4xx/Include" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/STM32L4xx_HAL_Driver/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/SensorTile" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/Common" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lsm6dsm" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lps22hb" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lsm303agr" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/hts221" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FatFs/src" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FatFs/src/drivers" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/include" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/CMSIS/Include"  -O3 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/usbd_conf.o: C:/Users/大聪/Desktop/gobabygo-master/Src/usbd_conf.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32L476xx -DUSE_HAL_DRIVER -DUSE_STM32L4XX_NUCLEO -I"C:/Users/大聪/Desktop/gobabygo-master/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/CMSIS/Device/ST/STM32L4xx/Include" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/STM32L4xx_HAL_Driver/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/SensorTile" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/Common" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lsm6dsm" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lps22hb" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lsm303agr" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/hts221" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FatFs/src" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FatFs/src/drivers" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/include" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/CMSIS/Include"  -O3 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/usbd_desc.o: C:/Users/大聪/Desktop/gobabygo-master/Src/usbd_desc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32L476xx -DUSE_HAL_DRIVER -DUSE_STM32L4XX_NUCLEO -I"C:/Users/大聪/Desktop/gobabygo-master/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/CMSIS/Device/ST/STM32L4xx/Include" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/STM32L4xx_HAL_Driver/Inc" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/SensorTile" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/Common" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lsm6dsm" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lps22hb" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/lsm303agr" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/BSP/Components/hts221" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FatFs/src" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FatFs/src/drivers" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"C:/Users/大聪/Desktop/gobabygo-master/Middlewares/Third_Party/FreeRTOS/Source/include" -I"C:/Users/大聪/Desktop/gobabygo-master/Drivers/CMSIS/Include"  -O3 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


