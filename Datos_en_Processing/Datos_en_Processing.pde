import processing.serial.*;

Serial puertoSerie; // Variable para la comunicación serial
String valores; // Variable para almacenar el valor recibido

void setup() {
  size(700, 300); // Tamaño de la ventana de Processing
  puertoSerie = new Serial(this, "COM4", 9600); // Inicia la comunicación serial con Arduino
}

void draw() {
  background(255); // Fondo blanco
  fill(0); // Texto en negro
  textSize(24); // Tamaño de letra
  text("" + valores, 50, 100); // Muestra los valores enviados
}

void serialEvent(Serial puertoSerie) {
  valores = puertoSerie.readStringUntil('\n'); // Lee el valor enviado por Arduino
}
