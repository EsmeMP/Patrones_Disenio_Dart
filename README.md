# Patrones de diseño

## Qué es un patrón de diseño

Un patrón de diseño es una solución que ya se probó para un problema que aparece muchas veces al programar. No es código listo para copiar, sino una idea de cómo organizar las clases para que el programa sea más ordenado y fácil de cambiar.

Los patrones se agrupan en tres tipos:

- **Creacionales:** se enfocan en cómo se crean los objetos.
- **Estructurales:** se enfocan en cómo se conectan y organizan las clases.
- **De comportamiento:** se enfocan en cómo se comunican las clases entre sí.

---

## Adapter (Adaptador)

**Tipo:** estructural

**La idea:** sirve para que dos cosas que no encajan puedan trabajar juntas.

**Problema:** tengo una clase que espera cierta forma de trabajar, pero la otra clase que quiero usar funciona distinto y no puedo cambiarla.

**Solución:** creo una clase intermedia (el adaptador) que traduce de una forma a la otra.

**Ejemplo de la vida real:** un adaptador de corriente. El enchufe del aparato no entra en el contacto de la pared, entonces se usa un adaptador en medio.

**Cuándo usarlo:** cuando quiero usar una clase o librería externa, pero su interfaz no es compatible con la mía.

---

## Command (Comando)

**Tipo:** de comportamiento

**La idea:** convertir una acción en un objeto para poder guardarla, ejecutarla cuando quiera y también deshacerla.

**Problema:** quiero que el programa recuerde qué acciones se hicieron para poder deshacerlas o repetirlas.

**Solución:** cada acción se guarda en una clase propia con un método para ejecutar y otro para deshacer. Un controlador guarda un historial de esas acciones.

**Ejemplo de la vida real:** el botón "deshacer" (Ctrl + Z) de un editor de texto.

**Cuándo usarlo:** cuando necesito historial, deshacer/rehacer o programar acciones para después.

---

## Facade (Fachada)

**Tipo:** estructural

**La idea:** esconder lo complicado detrás de una sola clase fácil de usar.

**Problema:** un sistema tiene muchas partes y para usarlo hay que llamar a muchas clases en un orden específico.

**Solución:** creo una clase (la fachada) que ya sabe hacer todos esos pasos. Quien la use solo llama a un método.

**Ejemplo de la vida real:** el botón "ver película" de un control de cine en casa, que enciende el proyector, ajusta el sonido y pone la película sin que yo haga cada paso.

**Cuándo usarlo:** cuando quiero simplificar el uso de un sistema grande o complejo.

---

## Factory Method (Método de fábrica)

**Tipo:** creacional

**La idea:** en lugar de crear los objetos directamente con `new`, dejo que una "fábrica" decida cuál crear.

**Problema:** si el código principal crea los objetos por sí mismo, queda atado a una clase específica y es difícil agregar nuevos tipos.

**Solución:** defino una clase base con un método que crea el objeto, y cada clase hija decide qué tipo concreto devolver.

**Ejemplo de la vida real:** una pizzería. Pido "una pizza" y cada sucursal prepara la suya según su receta.

**Cuándo usarlo:** cuando no sé de antemano qué tipo exacto de objeto voy a necesitar, o cuando quiero poder agregar tipos nuevos sin modificar el código existente.

---

## Observer (Observador)

**Tipo:** de comportamiento

**La idea:** cuando algo cambia, avisar automáticamente a todos los que les interesa.

**Problema:** varios objetos necesitan enterarse cuando otro objeto cambia, pero no quiero estar preguntando constantemente si hubo cambios.

**Solución:** el objeto que cambia (el sujeto) guarda una lista de observadores suscritos. Cuando ocurre un cambio, recorre la lista y avisa a cada uno.

**Ejemplo de la vida real:** suscribirse a un canal de YouTube. Cuando sube un video nuevo, a todos los suscriptores les llega la notificación.

**Cuándo usarlo:** cuando un cambio en un objeto debe reflejarse en varios otros sin que estén fuertemente conectados.

---

## Singleton (Instancia única)

**Tipo:** creacional

**La idea:** asegurar que de una clase solo exista un objeto en todo el programa.

**Problema:** hay cosas que deben ser únicas y compartidas, y si se crean varias copias pueden dar datos distintos o inconsistentes.

**Solución:** hago privado el constructor para que nadie pueda crear objetos libremente, y ofrezco un único punto de acceso que siempre devuelve la misma instancia.

**Ejemplo de la vida real:** el presidente de un país. Solo hay uno a la vez y todos se refieren a la misma persona.

**Cuándo usarlo:** para configuraciones globales, conexiones a bases de datos o registros (logs) que deben compartirse.

---

## Tabla comparativa

| Patrón | Tipo | Problema que resuelve | Idea en una frase | Ejemplo cotidiano |
|---|---|---|---|---|
| Adapter | Estructural | Dos interfaces incompatibles | Traduce una interfaz a otra | Adaptador de corriente |
| Command | De comportamiento | Necesito guardar, repetir o deshacer acciones | Una acción convertida en objeto | Botón deshacer |
| Facade | Estructural | Un sistema complejo es difícil de usar | Una sola puerta de entrada simple | Control "ver película" |
| Factory Method | Creacional | El código depende de clases concretas al crear objetos | La fábrica decide qué objeto crear | Sucursales de una pizzería |
| Observer | De comportamiento | Varios objetos deben enterarse de un cambio | Avisar a los suscritos cuando algo cambia | Suscripción a un canal |
| Singleton | Creacional | Necesito una sola instancia compartida | Un único objeto para todos | Un solo presidente |

---

## Diferencias que suelen confundirse

- **Adapter vs Facade:** el Adapter hace compatible una cosa con otra. El Facade simplifica un conjunto de cosas.
- **Factory Method vs Singleton:** ambos son creacionales, pero el Factory crea objetos de distintos tipos, mientras que el Singleton limita a uno solo.
- **Command vs Observer:** ambos son de comportamiento. Command guarda acciones para ejecutarlas o deshacerlas; Observer reparte avisos cuando hay un cambio.