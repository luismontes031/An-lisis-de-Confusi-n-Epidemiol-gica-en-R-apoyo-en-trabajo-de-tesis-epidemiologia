### Analisis de confusion en epidemiologia en R,apoyo en trabajo de tesis epidemiologia
Proyecto de análisis estadístico y epidemiológico aplicado en R, desarrollado como apoyo metodológico para un trabajo académico en epidemiología. Evalúa si el tabaquismo actúa como variable de confusión en la relación entre obesidad y mortalidad.
# Análisis de Confusión Epidemiológica en R

## Descripción
Proyecto de análisis epidemiológico aplicado desarrollado en R como apoyo metodológico y estadístico para un trabajo académico en epidemiología.

## Objetivo
Evaluar si el tabaquismo actúa como variable de confusión en la asociación entre obesidad y mortalidad mediante análisis estratificado y cálculo de Odds Ratio (OR).

## Metodología
- Limpieza y preparación de datos
- Construcción de tablas 2x2
- Cálculo de OR crudo
- Evaluación de asociación entre exposición, desenlace y posible confusor
- Estratificación por tabaquismo
- Comparación de OR estratificados


## Resultados

### 1. Asociación entre obesidad y mortalidad (OR crudo)

El Odds Ratio (OR) crudo para la asociación entre obesidad y mortalidad fue:

```r
OR_crudo = 1.31

Este resultado indica que los individuos con obesidad presentaron aproximadamente 1.31 veces mayor oportunidad de mortalidad en comparación con los individuos no obesos, sin controlar otras variables.

### 2.Asociación entre tabaquismo y obesidad

El OR para la asociación entre tabaquismo y obesidad fue:
OR_tabaco_obesidad = 1.00

Este resultado indica que no se observó asociación entre tabaquismo y obesidad en la base de datos analizada.

### 3. Asociación entre tabaquismo y mortalidad

El OR para la asociación entre tabaquismo y mortalidad fue:
OR_tabaco_muerte = 4.00

Los individuos fumadores presentaron aproximadamente 4 veces mayor oportunidad de mortalidad en comparación con los no fumadores.

### 4. Estratificación por tabaquismo
OR en fumadores
OR_fumadores = 1.23
Entre los fumadores, los pacientes con obesidad presentaron aproximadamente 1.23 veces mayor oportunidad de mortalidad frente a los no obesos.

OR en no fumadores
OR_no_fumadores = 1.67
Entre los no fumadores, los pacientes con obesidad presentaron aproximadamente 1.67 veces mayor oportunidad de mortalidad frente a los no obesos.

### Interpretación epidemiológica

El OR crudo mostró una asociación positiva entre obesidad y mortalidad (OR = 1.31). Sin embargo, al realizar estratificación por tabaquismo, los OR obtenidos en fumadores y no fumadores mostraron diferencias moderadas.

Adicionalmente, se observó una fuerte asociación entre tabaquismo y mortalidad (OR = 4.00), mientras que no se encontró asociación entre tabaquismo y obesidad (OR = 1.00).

Debido a que el tabaquismo no se asoció con la exposición principal (obesidad), no cumple completamente los criterios epidemiológicos clásicos para actuar como variable confusora en esta base de datos.

Los resultados sugieren que el tabaquismo actúa principalmente como un factor independiente asociado a mortalidad más que como una variable de confusión importante en la relación obesidad-mortalidad.

###Conclusiones

La obesidad mostró una asociación positiva leve con mortalidad en el análisis crudo.

El tabaquismo presentó una fuerte asociación con mortalidad, aumentando aproximadamente cuatro veces la oportunidad de muerte en comparación con los no fumadores.

Sin embargo, el tabaquismo no mostró asociación con obesidad, lo cual limita su papel como variable confusora en esta relación epidemiológica.

La estratificación permitió evaluar posibles cambios en la asociación entre obesidad y mortalidad al controlar por tabaquismo, constituyendo un ejercicio aplicado de epidemiología analítica y control de confusión mediante Odds Ratio estratificados.


## Herramientas utilizadas
- R
- readxl
- Epidemiología analítica

## Conceptos aplicados
- Confusión epidemiológica
- Estratificación
- Odds Ratio (OR)
- Estudios observacionales
- Interpretación epidemiológica

## Autor
Luis Alberto Sánchez Montes
