COOLER VACUNAS - RevD.5 LIMPIA

Esta revisión rehace el layout desde cero y NO reutiliza las pistas de RevD.4.

Distribución:
- Board: 90 x 60 mm.
- H1-H4: agujeros de montaje Ø3.2 mm.
- U1: ESP32 DevKit V1 centrado.
- J1: alimentación 5V arriba.
- J2/J3: sensores a la izquierda, verticales y alineados.
- J4: OLED a la derecha, bajado y separado de H2.
- J5: LED a la derecha, debajo de J4.
- J6: módulo MOSFET en la zona inferior derecha.
- R1/R2: resistencias THT, a cada lado del ESP32.

IMPORTANTE:
La RevD.5 se entrega SIN PISTAS de cobre intencionalmente.
La netlist eléctrica sí está asignada a cada pad.
Esto evita conservar pistas cruzadas, colgantes o incorrectas de versiones previas.

Siguiente paso en KiCad:
1. Abrir el proyecto.
2. Confirmar que la disposición física te gusta.
3. Configurar reglas: pista mínima 0.8 mm y clearance 0.8 mm.
4. Rutear prioritariamente en B.Cu.
5. Ejecutar DRC.
6. Solo después generar Gerber.

Pinout:
GPIO4  -> TEMP_DATA
GPIO21 -> OLED_SDA
GPIO22 -> OLED_SCL
GPIO25 -> LED_CTRL
GPIO27 -> PELTIER_CTRL
VIN    -> 5V
3V3    -> sensores/OLED
GND    -> masa común
