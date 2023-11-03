![Captura de pantalla 2023-10-27 a la(s) 16 03 47](https://github.com/Adrie2901/Rock-Sissors-Paper--Game/assets/105026315/bf410270-0ca4-4e63-89a8-73d230b13de4)# Rock, Paper, Scissors✂️🪨📄

Este es un juego móvil que simula el clásico juego de "Piedra, Papel o Tijera".

## Capturas de Pantalla

![Captura de pantalla 1](images/Captura%20de%20pantalla%202023-10-27%20a%20las%2016.03.47.jpg){:width="50px"}
![Captura de pantalla 2](images/Captura%20de%20pantalla%202023-10-27%20a%20las%2016.03.51.jpg){:width="50px"}
![Captura de pantalla 3](images/Captura%20de%20pantalla%202023-10-27%20a%20las%2016.04.10.jpg){:width="50px"}
![Captura de pantalla 4](images/Captura%20de%20pantalla%202023-10-27%20a%20las%2016.04.39.jpg){:width="50px"}



## Implementación de Pantallas

- **Pantalla de Inicio**
  - Incluye un LaunchScreen con una imagen relacionada con el juego.

- **Pantalla de Configuración**
  - **Nombre del Jugador**: Proporciona un campo de texto obligatorio para que el jugador ingrese su nombre.
  - **Opciones del Juego**:
    - Los jugadores pueden elegir entre dos modos de juego: por rondas o por puntos.
    - Para rondas, un deslizador permite seleccionar el número de rondas necesarias para ganar (valores de 1 a 5).
    - Para puntos, incluye campos para el valor de victoria, valor de derrota y el puntaje requerido para ganar la sesión.
  - **Botón "Continuar"**: Aparece cuando todos los campos se llenan correctamente, permitiendo que los jugadores avancen.
  - **Botón "Información"**: Lleva al usuario a una pantalla que explica las reglas del juego de "Piedra, Papel o Tijera", incluyendo una sección de reconocimientos que contiene tu nombre.

- **Pantalla de Juego**
  - Muestra tres botones representando las opciones de "Piedra", "Papel" o "Tijera".
  - El fondo cambia para indicar el resultado del juego (verde para victoria, rojo para derrota, marrón para empate).
  - Una etiqueta muestra el resultado junto con el nombre del jugador.
  - Modo de Juego:
    - Por Puntos: Muestra un contador de puntos en tiempo real. Muestra alertas al alcanzar el puntaje de victoria.
    - Por Rondas: Muestra un contador de rondas. Muestra alertas al alcanzar el número seleccionado de rondas.
  - **Botón "Siguiente Turno"**: Aparece después de cada ronda para que el usuario pueda proceder.
  - **Botón "Reiniciar Juego"**: Restaura todas las opciones y valores a sus estados iniciales.

- **Pantalla de Historial**
  - Un botón en la Pantalla de Juego permite a los usuarios ver el historial del juego.
  - La información del juego almacenada en un array se muestra en un TextView, accesible solo durante la sesión de la aplicación.



- **Storyboard**: Pantalla de Inicio.
- **XIBs**: Pantalla de Configuración.
- **Programático**: Historial
- **Enfoque Personalizado**: Pantalla de juego.

¡Siéntete libre de contribuir y mejorar el juego! Para obtener más detalles, consulta las implementaciones de pantalla respectivas en los archivos del proyecto.

