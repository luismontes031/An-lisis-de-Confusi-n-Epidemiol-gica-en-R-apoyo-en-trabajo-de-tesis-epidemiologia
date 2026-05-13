# =========================================================
# ANÁLISIS DE CONFUSIÓN EPIDEMIOLÓGICA EN R
# =========================================================

# OBJETIVO:
# Evaluar si el tabaquismo actúa como variable de
# confusión en la asociación entre obesidad y mortalidad.


# =========================================================
# 1. LIBRERÍAS
# =========================================================

library(readxl)


# =========================================================
# 2. IMPORTAR BASE DE DATOS
# =========================================================

BD_confusion <- read_excel("datos/BD_confusion.xlsx")

# Visualizar estructura
str(BD_confusion)

# Visualizar primeras filas
head(BD_confusion)


# =========================================================
# 3. OR CRUDO
# RELACIÓN ENTRE OBESIDAD Y MORTALIDAD
# =========================================================

tabla_obesidad <- table(
  BD_confusion$obesidad,
  BD_confusion$estado_vital
)

tabla_obesidad


# Extraer celdas

a <- tabla_obesidad[2,2]
b <- tabla_obesidad[2,1]
c <- tabla_obesidad[1,2]
d <- tabla_obesidad[1,1]


# Calcular Odds Ratio crudo

OR_crudo <- (a*d)/(b*c)

OR_crudo


# =========================================================
# 4. EVALUAR POSIBLE CONFUSIÓN
# =========================================================

# El tabaquismo debe asociarse con:
# 1. obesidad
# 2. mortalidad


# =========================================================
# 5. TABAQUISMO Y OBESIDAD
# =========================================================

tabla_tabaco_obesidad <- table(
  BD_confusion$tabaquismo,
  BD_confusion$obesidad
)

tabla_tabaco_obesidad


a <- tabla_tabaco_obesidad[2,2]
b <- tabla_tabaco_obesidad[2,1]
c <- tabla_tabaco_obesidad[1,2]
d <- tabla_tabaco_obesidad[1,1]


OR_tabaco_obesidad <- (a*d)/(b*c)

OR_tabaco_obesidad


# =========================================================
# 6. TABAQUISMO Y MORTALIDAD
# =========================================================

tabla_tabaco_muerte <- table(
  BD_confusion$tabaquismo,
  BD_confusion$estado_vital
)

tabla_tabaco_muerte


a <- tabla_tabaco_muerte[2,2]
b <- tabla_tabaco_muerte[2,1]
c <- tabla_tabaco_muerte[1,2]
d <- tabla_tabaco_muerte[1,1]


OR_tabaco_muerte <- (a*d)/(b*c)

OR_tabaco_muerte


# =========================================================
# 7. ESTRATIFICACIÓN
# =========================================================

# Separar fumadores y no fumadores

fumadores <- BD_confusion[
  BD_confusion$tabaquismo == 1,
]

no_fumadores <- BD_confusion[
  BD_confusion$tabaquismo == 0,
]


# =========================================================
# 8. OR EN FUMADORES
# =========================================================

tabla_fumadores <- table(
  fumadores$obesidad,
  fumadores$estado_vital
)

tabla_fumadores


a1 <- tabla_fumadores[2,2]
b1 <- tabla_fumadores[2,1]
c1 <- tabla_fumadores[1,2]
d1 <- tabla_fumadores[1,1]


OR_fumadores <- (a1*d1)/(b1*c1)

OR_fumadores


# =========================================================
# 9. OR EN NO FUMADORES
# =========================================================

tabla_no_fumadores <- table(
  no_fumadores$obesidad,
  no_fumadores$estado_vital
)

tabla_no_fumadores


a0 <- tabla_no_fumadores[2,2]
b0 <- tabla_no_fumadores[2,1]
c0 <- tabla_no_fumadores[1,2]
d0 <- tabla_no_fumadores[1,1]


OR_no_fumadores <- (a0*d0)/(b0*c0)

OR_no_fumadores


# =========================================================
# 10. COMPARACIÓN FINAL
# =========================================================

OR_crudo
OR_fumadores
OR_no_fumadores


# INTERPRETACIÓN:
#
# Si los OR estratificados cambian considerablemente
# respecto al OR crudo:
# -> existe confusión.
#
# Si los OR estratificados son similares entre sí,
# pero distintos al OR crudo:
# -> tabaquismo actúa como variable confusora.
#
# Si los OR estratificados son muy diferentes
# entre sí:
# -> puede existir interacción/modificación de efecto.
