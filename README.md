# Incubator Vaccines

Proyecto desarrollado para el curso de Electrónica para Ingeniería Biomédica, orientado al diseño e implementación de un sistema electrónico para el monitoreo y control térmico de un cooler destinado al transporte y conservación de vacunas.

El sistema utiliza un ESP32 como unidad principal de control, sensores de temperatura DS18B20 para monitorear las condiciones térmicas internas, una pantalla OLED para visualizar información y un módulo MOSFET externo para controlar una celda Peltier.

La PCB fue diseñada en KiCad considerando las restricciones de fabricación mediante CNC y priorizando el uso de una sola cara de cobre.

## Características principales

- Microcontrolador ESP32 DevKit V1 de 30 pines.
- Dos sensores de temperatura DS18B20.
- Pantalla OLED de 0,96 pulgadas mediante comunicación I2C.
- LED indicador externo.
- Control de módulo MOSFET mediante señal digital.
- Celda Peltier TEC1-12706 como elemento de refrigeración.
- Alimentación desde batería AGM de 12 V.
- Conversión de 12 V a 5 V mediante convertidor DC-DC buck.
- PCB diseñada para fabricación mediante CNC.
- Componentes THT para facilitar montaje y soldadura manual.

## Conexiones principales

Las señales utilizadas por el ESP32 corresponden a:

| Función | Pin ESP32 |
|---|---|
| Sensores DS18B20 | GPIO4 |
| OLED SDA | GPIO21 |
| OLED SCL | GPIO22 |
| LED | GPIO25 |
| Control MOSFET | GPIO27 |

Los dos sensores DS18B20 comparten la misma línea OneWire mediante GPIO4 y utilizan una resistencia pull-up de 4,7 kΩ entre la línea de datos y 3,3 V.

El LED externo utiliza una resistencia de 330 Ω.

## Alimentación

La alimentación general del sistema se realiza desde una batería AGM de 12 V.

La estructura de alimentación corresponde a:

`Batería 12 V → interruptor → convertidor buck 12 V / 5 V → PCB`

La PCB recibe 5 V regulados mediante el conector J1.

La celda Peltier no es alimentada directamente desde la PCB. La etapa de potencia utiliza un módulo MOSFET externo, evitando que la corriente elevada de la Peltier circule por las pistas de control.

## Diseño de la PCB

La PCB posee dimensiones aproximadas de 90 mm × 60 mm e incorpora cuatro perforaciones de montaje de 3,2 mm.

El ruteo fue realizado principalmente mediante la capa inferior B.Cu, utilizando:

- Ancho mínimo de pista: 0,8 mm.
- Separación mínima: 0,8 mm.
- Cuatro agujeros de montaje de 3,2 mm.
- Componentes THT para resistencias y conexiones externas.

Durante la revisión previa a la fabricación se modificó el footprint del ESP32 para mejorar la separación entre pads. El diámetro de los pads fue reducido desde aproximadamente 2,2 mm a 1,7 mm, manteniendo un diámetro de perforación de 1,0 mm y un paso de 2,54 mm.

La PCB final fue fabricada mediante CNC.

## Estructura del repositorio

```text
incubator-vaccines/
│
├── README.md
│
└── electronica/
    │
    ├── kicad/
    │   ├── CoolerVacunas_RevD5.kicad_pro
    │   ├── CoolerVacunas_RevD5.kicad_sch
    │   ├── CoolerVacunas_RevD5.kicad_pcb
    │   ├── fp-lib-table
    │   ├── sym-lib-table
    │   └── CoolerVacunas.pretty/
    │
    └── outputs/
        ├── BOM_RevD5.csv
        ├── archivos Gerber
        ├── archivos Drill
        ├── archivo STEP
        └── archivo ZIP de fabricación
```

## Archivos de fabricación

Dentro de `electronica/outputs/` se encuentran los principales archivos necesarios para revisar o reproducir la PCB:

- Lista de materiales BOM.
- Archivos Gerber.
- Archivos de perforación Drill.
- Modelo 3D en formato STEP.
- Archivo comprimido con los archivos de fabricación.

## Estado del proyecto

- Diseño esquemático: finalizado.
- Diseño PCB: finalizado.
- Revisión DRC: realizada.
- Archivos de fabricación: generados.
- Fabricación CNC de la PCB: realizada.
- Montaje y soldadura de componentes: en proceso.
- Pruebas funcionales del sistema: pendientes de completar.

## Software utilizado

- KiCad 10 para diseño esquemático, PCB y generación de archivos de fabricación.
- ESP32 como plataforma de control del sistema.

## Nota

Los archivos disponibles en este repositorio corresponden a la versión final utilizada para la fabricación física de la PCB.
