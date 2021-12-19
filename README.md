# Contador_Pulsos
Este proyecto consiste en el diseño e implementación de un contador de pulsos, mediante lógica secuencial, y el lenguaje de descripción de hadware Verilog. En este caso, el sistema solo toma como válidos los pulsos que tienen una duración mínima de 4 ciclos de reloj (para evitar conteos erróneos debido al ruido en la señal de entrada). La salida del sistema corresponde a 2 señales de 4 bits cada una, codificada en BCD (una para mostrar las unidades, y otra para las decenas del conteo). Por otra parte, el reset del sistema funciona de manera síncrona, y el conteo tiene una capacidad máxima de 20 (debido a los requerimientos del problema), una vez alcanzado este número, el sistema se reincia a 0.

Colaboradores:
- Jose Fabio Navarro Naranjo
- Adrián Dittel Retana
- Gabriel González Rodríguez
