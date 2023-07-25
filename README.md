### STM32

#### visual studio code
1. C/C++
2. CMake
3. CMake Tools
4. Cortex-Debug

#### Jkit-nucleo-64
```
#include "main.h"
#include "gpio.h"


#define A_MODE 0
#define B_MODE 1


volatile int led_mode = A_MODE;
uint16_t led[] = {LED0_Pin,LED1_Pin,LED2_Pin,LED3_Pin,LED4_Pin,LED5_Pin,LED6_Pin,LED7_Pin};
GPIO_TypeDef *led_group[] = {LED0_GPIO_Port,LED1_GPIO_Port,LED2_GPIO_Port,LED3_GPIO_Port,
							 LED4_GPIO_Port,LED5_GPIO_Port,LED6_GPIO_Port,LED7_GPIO_Port};

void SystemClock_Config(void);

void led_a(){
	int i;
	for(i = 0; i < 4; i++){
		HAL_GPIO_WritePin(led_group[i], led[i], GPIO_PIN_SET);
		HAL_GPIO_WritePin(led_group[i+4], led[i+4], GPIO_PIN_RESET);
	}
	HAL_Delay(500);
	if(led_mode == B_MODE)return;
	for(i=0; i < 4; i++){
		HAL_GPIO_WritePin(led_group[i],led[i],GPIO_PIN_RESET);
		HAL_GPIO_WritePin(led_group[i+4], led[i+4], GPIO_PIN_SET);
	}
	HAL_Delay(500);
}

void led_b(){
	int i;
	for(i=0; i<7; i++){
		HAL_GPIO_WritePin(led_group[i], led[i], GPIO_PIN_RESET);
		HAL_GPIO_WritePin(led_group[i+1], led[i+1], GPIO_PIN_SET);
		HAL_Delay(100);
		if(led_mode == A_MODE)return;
	}
	for(i=7; i>0; i--){
		HAL_GPIO_WritePin(led_group[i], led[i], GPIO_PIN_RESET);
		HAL_GPIO_WritePin(led_group[i-1], led[i-1], GPIO_PIN_SET);
		HAL_Delay(100);
		if(led_mode == A_MODE)return;
	}
}

int main(void)
{
  HAL_Init();
  SystemClock_Config();
  MX_GPIO_Init();

  while (1)
  {
	  if(led_mode == A_MODE)led_a();
	  else led_b();
  }
}

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin){
	if(GPIO_Pin == SW1_Pin){
		if(led_mode == A_MODE) led_mode = B_MODE;
		else led_mode = A_MODE;
	}
}
```
