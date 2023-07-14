### STM32

#### visual studio code
1. C/C++
2. CMake
3. CMake Tools
4. Cortex-Debug

#### Jkit-nucleo-64
```
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin){
	 if(!HAL_GPIO_ReadPin(GPIOD, GPIO_PIN_2))
		if(led_state == LED_ON){
			HAL_GPIO_WritePin(GPIOB, GPIO_PIN_15|GPIO_PIN_14|GPIO_PIN_13|GPIO_PIN_12, GPIO_PIN_RESET);
			led_state = LED_OFF;
			}
		else{
			HAL_GPIO_WritePin(GPIOB, GPIO_PIN_15|GPIO_PIN_14|GPIO_PIN_13|GPIO_PIN_12, GPIO_PIN_SET);
			led_state = LED_ON;
		  }
```
