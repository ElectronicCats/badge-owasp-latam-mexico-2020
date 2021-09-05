#include <SPI.h>
#include <Wire.h>
#include <WiFi.h>
#include <WiFiClient.h>
#include <WiFiAP.h>

#include <Adafruit_GFX.h>
#include <Adafruit_SPITFT.h>
#include <Adafruit_SPITFT_Macros.h>
#include <gfxfont.h>
#include <Adafruit_GrayOLED.h>
#include <Adafruit_SSD1306.h>
#include <Adafruit_NeoPixel.h>
#ifdef __AVR__
  #include <avr/power.h>
#endif

// NeoPixel
#define PIN 15      // Puerto I0515
#define NUMPIXELS 2 //Número de leds
Adafruit_NeoPixel pixels(NUMPIXELS, PIN, NEO_GRB + NEO_KHZ800);

// Definiciones de pantalla
#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 32
#define OLED_RESET 4
#define SCREEN_ADDRESS 0x3C
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

// Datos de configuracion del AP
const char *ssid = "Wifi CTF";
const char *password = "yx67SnMw";
WiFiServer server(80);

IPAddress IP = IPAddress(10,20,1,2);
IPAddress MSK = IPAddress(255,255,255,0);
IPAddress GW = IPAddress(10,20,1,1);
int flagWifi = -1;  //Wifi deshabilitado

// Simbolo hacker
#define LOGO_HEIGHT 16
#define LOGO_WIDTH 24
static const unsigned char PROGMEM logo[] = {
  0b00000000,0b00111100,0b00000000,
  0b00000000,0b01111110,0b00000000,
  0b00000000,0b11111111,0b00000000,
  0b00000000,0b01111110,0b00000000,
  0b00000000,0b00111100,0b00000000,
  0b00000000,0b00000000,0b00111100,
  0b00000000,0b00000000,0b01111110,
  0b00000000,0b00000000,0b11111111,
  0b00000000,0b00000000,0b01111110,
  0b00000000,0b00000000,0b00111100,
  0b00111100,0b00111100,0b00111100,
  0b01111110,0b01111110,0b01111110,
  0b11111111,0b11111111,0b11111111,
  0b01111110,0b01111100,0b01111110,
  0b00111100,0b00111100,0b00111100,
  0b00000000,0b00000000,0b00000000
};

// Imagen OWASP Riviera Maya en base64
char *img[] = {
              "/9j/4AAQSkZJRgABAQEAWgBaAAD/2wBDAAoHBwgHBgoICAgLCgoLDhgQDg0NDh0VFhEYIx8lJCIf",
              "IiEmKzcvJik0KSEiMEExNDk7Pj4+JS5ESUM8SDc9Pjv/2wBDAQoLCw4NDhwQEBw7KCIoOzs7Ozs7",
              "Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozv/wgARCABlAGUDAREA",
              "AhEBAxEB/8QAGwAAAwEBAQEBAAAAAAAAAAAABAUGAwIBAAf/xAAUAQEAAAAAAAAAAAAAAAAAAAAA",
              "/9oADAMBAAIQAxAAAAFyKj0JGxPFQLzkUnRyUpNhYGejojCrMR0TIKHDcSnIuGZ0LggJKMlxGPR4",
              "LgU9OQg4ARmFCILBynE5oZigbmBoICtOiZLcJAxUTwYMRGUZKHo2NycL0HIwZBI9Js4ABsDlEcDs",
              "kzA7PggcEgYlSSw3FJeC8YiMBEB+hAQrFoWJhmVQjPTkHBz0biEPDTAajInAQVj8pxOKByTYCPBc",
              "WAjNTIxCzYli8J4CMiqNwkGPjU1OgMZAwMaBR0f/xAAkEAACAgIBBAIDAQAAAAAAAAADBAIFAAEV",
              "ERMUNBI1ISQ2Bv/aAAgBAQABBQJ56Sk+ZP05k+K2hDsuMSWX3dGjgS6KNN2bO1XpnBq6NvOYPnNG",
              "1pY2zr3PtWVkRIy1wY7Mv6RtvtQesSswrkYLxStNHmx61UTs1XOnxljbVFW/X3Ps3CxzsJJMwcl/",
              "R/HYLgK4n7QzryegVqDG2PWroblT+A3hBzF/n636+0VOcvyu+nyusWWd3ZN9zZ61WQ3dtCYYqljL",
              "4vp2aq4LZWHyusMO3YEkOQk7ZkwC1jc5qHuASB37LxZQO9TVZT6cBV9WuRb1ONupOT78For2Z9HA",
              "eDAcOuM8VEDARLVMAFWLHNA5vnJpqIYVwm9Y8dUs0TAjCNW5NhuCncKRtGaE5ERfeirirBds3BJa",
              "dqVjbxxTvjrg65Sxse5pRoIJU4omX+DCliRoMbKVfudlGOo6uevk20uzYbsfOzhd48Px6dDX6Vk5",
              "5GJJ7bm63oEjClXu83+esrKwWF2F3lRHL5AMbUWbPqnWntkGl2EPRXAuqzwwJ7r6+DYyVAYLrr90",
              "jJJBVrfr7rXVglVXhyFdWykBeKt7YKsTehasrQjUAYgIzNdOoIGC/wCktXISWlV+OpxasBjWuPZv",
              "faQ96X9GUwwQ3WJtbO2+nqUVLPRUxklBWcW2kUx4TTwkK36+6/DLDNS1IZKcRBmGxfynJq1iUqBn",
              "GyNbXVCuOn38E4NiKJQ02LS4+trfrzLBPvjU841PBpLCnpcOjmAM8eNTzp+BqgDDjU8giqOZBQNC",
              "EIih/8QAFBEBAAAAAAAAAAAAAAAAAAAAcP/aAAgBAwEBPwEp/8QAFBEBAAAAAAAAAAAAAAAAAAAA",
              "cP/aAAgBAgEBPwEp/8QAOxAAAQMDAgMFBQUGBwAAAAAAAQACAxESMQQhEyJBFDJCUXEjMzRhcgVS",
              "oaLCEIGR0eHwFSRDYpKx8f/aAAgBAQAGPwKNrYr7/wAF8GV8GUyF2nsu61wuI2O81wvhPxTXVFSK",
              "kVwpbobLMfNSyOhs4fTzW2j/ABXwZwqnRn+KZKW23DC0vqmsYxrqtruo4jGwB5TfT9KIgtlmH+nk",
              "/wAFwZYg2012yuM1ziZWioKkE5jit7u9KqX6Cp5GjuuJ39EPZR4RmeKFxwPqUPotNjKYYoS8Bqhc",
              "7TkAHcpuMfpUmplbZD98+inDjyGrgWlWcNrWNNrC4ZCJZI5zhu6hwpfoK1LWtqSTQD0Q/wAs7Cse",
              "y1wOD9Sh9FC6GO63O+F3B+Vd0flUeo1EX1OqPJPGs20XQ/3unzMZ7BzeR1cqWP7Qf7ONxsoP5Kcv",
              "jtvpbvnKmbqm85FG4VkUQaCa5au6Mf7UY5YwWnpVqjY8WuA3ChEUtl2fmpZZ5L7DmnSicIXuEhHK",
              "bV2ntHsxkplCHyO3qfVO00klRGzu+WFM7Uxtcxxq3dU7TsD5JoBdzGg5U6K4tlLKt2UZm1FY/EKI",
              "Sx90/s5mNc4DlJ6KeB5ZdJWlMYRlc6KjW70/8UbnPadNvWPz/cj9n6OsUreuAuHHVmraaSSjxIyT",
              "zXse2rRXCZ2aLh0Juq0bosljukeaRup3SmP1EscgB3qa7LsUUAbO4crrdgjp+ORZ9w7KJzzcSMpr",
              "C0kyA0I6KAGeU1kHVWcR4bw8DCi1AnPCFeRHhERynx9VLFL7Utaa3CvkuFFfFwnU5VJxYuLdiowp",
              "sF3hc4YUEUmpe+4g5PmmQGGsh8dEdS5zXRnwEfJUaAB5BaalcqB7W7NANB13XZ+BwzLtfWtq+N/L",
              "/VCISXlpyFCab2BGNsNnDfkdVJWbh2HyymwNjrxtrgcKL2hmpz+SB7JvT739FkwiQetEyO++0ZUT",
              "pJuHZj5r30f/ACXFOqa3lpSoQa3WVPyopIhc63qofoCll7S0l53BI2TnM1V1N9qJznOdHwynyx6g",
              "yWA4TA4OYw7F/QJ2iYwyQtxKOvVQ+i0wQbJqXM67uCDW6sknYC8KOJhJDR19FO5sD3A4IHohBw4+",
              "QU5sriufIDLzmhCf7GnFPjCmjlkay/bcqeGHUtfcCd3DyR080zWXE+LdcHj+w+/cPNMbE65gGxWm",
              "2GVHsO51Kg2bnzTdhj9Kvlda3zRn5jxN6gq21rYwbWV8kKvuMWben90Tf8PaZWDvGuFFDPFZefPo",
              "jFESdRTlZXK4MkIbCP5qH0WmJQfMS4jYbOTXsqHN3HeTJYzVpH6U/RzG6DNqd2g26McsfX0Tg+QO",
              "Y1/LsnOibQvHNutS5p3G/wCCdNqX11bPdGigkldc5Sfu/wC1D6IGWMOtwvcNXuGoPZCGuGCjOGDi",
              "HxK2VgcMr3DVROZHGGtdkL3DUHshAc3BVkjbmnogxgo0YC//xAAlEAACAgICAQUBAQEBAAAAAAAB",
              "EQAhMWFBUXGBobHR8JHBEPH/2gAIAQEAAT8hz8JlqKx5uz9QEXQTk/US5O2YAnrUNjhAFmeMDZfU",
              "DhFBa0Fp67E99ahv5gwRPB9QeyHwX1MXIRyfqFYFcl9RzAw9ItgOXOxASJwv3Fi4EhsRMRe20O8g",
              "KGjwuUbaYYAVi/MFDAkEHccPoDdzs6n7PUK3CKHJDPKCPO96gqIB6UnG/XAdeTJXIixiSRxZlj7x",
              "xmBcvUvKF+QFxYRtLICbH3CTpog9fERnkAbfyfo9QWQNIbKweZRjzucpwVKNLx8wTkXZBkOzKWR/",
              "uYKXiPr/ALB1ggeAsBQPiGKbQhNqsdooqaOMYVN4EoUUwEWR7IeDCw0PubEFqYCMq1DAohBlrZmH",
              "uPf+xFVGhzoyr+TGonAZE8hqK/jEhgDQw5LMI9YYkDLWFAqUGoBRQU4uFGQIdQxuKjbWpV0RA6/y",
              "PD/II6ERQwGV8QuC4gzzqGUJamFgr/l+wI5QhGID7kuob0OTKClmhybX0WVAMysYIybF89RH1NVt",
              "eTahlPTElrgyaegcF/sosKh8n9UGOdcI9LEc4Ep3Zz3xKDkKJlf+wx21LJuLVkI/OYJiBEErsbiM",
              "IWNbO5gUEkTeRjEI1YCoSeRcJKgGoCQbXAZDTJJ5HHiA8hGAp37gfIaViayJifGCiKIs6gI4YSqo",
              "+sCWC2OkBxVgCAnRjNeRCG8lNdIrGsv/AMglAAVCBiaF4ibgeasKuGIgZQTPmOo/lA21nvUDHQTS",
              "vTxuHRBaZXjnqKeTC5Pz6cEHp1GLgN4HeRMCRyHc/wDIx/5hG73uDgKoMJ94MYAAbYlK12QWiMlZ",
              "OAshEwcoAONu3+UZcEkLKxEewSNuaik4HYejJUpQR1PmP7knnYhgnGgHJ9oF0yDT7QsQiJh2ZiU1",
              "sSDAfCUoFPNwdWIKAJuq3BbShmDTxjuMtlEgmuJaYHAok048SxWwIE/CVOT7xnGZyD8253y2TsTs",
              "PgcncHjtfLc+UHeUUaApo+vWkFwstGiLDHPSh9MC2JjBpIu49oNIiCM2K7gfJfc34w+75d2y+50A",
              "NfMMEgon5ECJBiPiZpweEYbJFEchBrQUVWADkXM2cCALeF4BzDzALVC9RPGzYXW/MOGBSPRaXxYk",
              "gAgxQrLzA2S00u57j4p+3cLoch4la+afBczD+kdQKFk5QHGZQHuZObzEwUkpiADcz9xmNRg6huJk",
              "FB0RUDif/9oADAMBAAIAAwAAABAAQAACCAACCAAACQCCASQSQCAQCCCCQQQQASCCCACCAQCAACCA",
              "AAAACASQCAAQQSACAQCSCCAQAAAQCCCSQCQf/8QAFBEBAAAAAAAAAAAAAAAAAAAAcP/aAAgBAwEB",
              "PxAp/8QAFBEBAAAAAAAAAAAAAAAAAAAAcP/aAAgBAgEBPxAp/8QAJBABAAICAgICAwEBAQAAAAAA",
              "AREhADFBUWGRcYGhscHw0RD/2gAIAQEAAT8QjXtxoQ4Hv8YhZ1Ea4j+8Skc9TSa9fzj9iNEYBSNw",
              "94ApiiKLuhy8jgyElJj/AHjD9R5JAUeaWMCF3EW8x073i926YrkOoyFCu02E5H74caTXr+cSBSUh",
              "NxnY+4zukTB1iMsaIhH15vfmgMiKTrNVoyyXUvjHH8lp8Uf3D2KmMraroQ4QhMAShRKIlUTWan5U",
              "EUgOXB20MFND3RDXecj/AA8MOsuRJuIrBvpbxwGPwQgUImeshWQ1FnliLkjkx12TkJStsKaNneBm",
              "+iYM+XnE+1PxU/zJOoCYagG+xNcYsQR8aduaTp1i0pWV8GYSwe2JHSAyyx9h9Z4Xk+eWZmbIQ239",
              "4DqKtS6ex7yurJ+yRKvSO8EBA6qTbnH/ACpZqQoJ096xqrab0qP2yT2dfZH6Y+eCH9zAUc4ATwiL",
              "t5OMCzH9VXmoPIGsOtEKFMUS05yA6ARRKaUeSN4EKuxsyJcbjeWHeJYiZV4MNnzjsj9MMT6CQgSw",
              "eMPbDkSSsSKPvOFdtog2o29bxe0RggIACecTjAhCOWZ6eMPNrF+27Q1hJiwAQcgaDjBbkQRTCCdv",
              "PODDt4WVotHbnFQ9JVBiPrixRZkCkP6ZZ5dUMEt8rjCbIGJJwr0cmsszWzLFXyP/AIoTpkZCkeLD",
              "1jKBwYU9HPhrH/8AslUzoR2c94+9IrAwdjdvicXkwODSIRt7MAAkQpErYGSwmMJI7VcCRAGGKXIF",
              "6JgrRCzEdN5qYqOgAmRLKQdYN7wHVlPytSbxZP5CySpkijRbyQWVFFjUg+VbnJotnyktuAjcCJUS",
              "+nrEMMnBa3rf5cjBUqeSkCa64MnAoC57rOyP1gi2SWDY8wg3kQIAhUmTe7ibck2kJokACIMOueGz",
              "GSSdyajWDdIAKnCWkMNdYN5qoMX2BxziscGVKm06PvApUFpQTI1snAvHAAPAaylUkCUJz4eSCIJW",
              "FCpiJhwG3AJCzcXa7N48eRSu1/bBzGu4t1K8xvCqFh2Vy7yR9bFzIBGp27xXDOGElCkR8t4X7EQN",
              "XApi2zWDg6yEQXf7fOskRqk7ETU/D855SUWD/afjvHkxqY3WYl77xs/h3c5HRrvKJ/0/OFA2pEcr",
              "8nrJfBDtgsB8vWHZ/wBTn1D/AIwQpQo2Ky8bJBWjfdXiWkGSrQYa59YClFAAgqrEBgRpCpBKwsOv",
              "eGd1tR3IPabMuuNKElAg0T6YIVHzC2FWALQb78MMSKRqb1rET8VJZ0F23JDXInLTAcvWa2VXE0Q8",
              "PrB0cYKASCNz4ME+URLUSdS9rxeQBHUQVry772YRNGBBY25vLMCAKIEDpk54UCSGSZ7cd4olQkXJ",
              "8XwaxesUphluQB+sM+UEaddk/nDPy3+hMg4huVL0NsFv+Son+YqAxApLrWGQDuNhIRWJnlh7FtmG",
              "IXLBKmZku/wx3KFErpG+h05rNFJyiW6fWUtIebFeA08sgUetSFFy7ZTmGlIW5wJAczP48eNEkEGY",
              "iHeX1VBdJVhp53hiZxMYVSdjhG1gygRiNl5yKAqwEhFHvftcYpA5hOgaC0G5xnbIZ8SbMba7w6hI",
              "hYEGHNPCFkJQHDVHzWTZNRvAJQBgGZA5pj6MhWidflkj6rsziYh8GUqYyE/9YDEHAi9HfPlw2Voi",
              "UhGL6X3hgagpkQHcaDA6Pk4AINeF94qBcUt2fflwMkR+h1gCYiTBiLvpwHR75/6zc3iS31flxz/D",
              "Jhhk15M4xyAGf//ZVzJac1lXY3lPaUEyTlRjNFhRcGhXRUZuU1VOQloxUllWbXhqTTFKNVdWTkNh",
              "MkZZU214Wk1rNXdZakkwWjJGWVFVdGFiV3h6V2xOQgpaMUV5Um5sYU1rVm5XVmhLYW1GSGJESmll",
              "VFJMV1RKNGJGbFlTV2RWYlZad0NtSnRiR3BoVjBaNVNVVk9WVkpwTkV0amJsWjFTVU5CCloxTlhO",
              "WEJaTW14b1NVaE9iR051V25CWk1teDJUR2R2UFFvPQo="
};
// control de las etapas de cada uno de los eventos.
int stage = 0;    //0: Flag 1, 1: Flag 2 y 2: flag 3
bool pantalla = false;

String cmd = "";

void setup() {
  // Iniciando pixels
  pixels.begin();

  // Iniciando OLED
  if(!display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS)){
    //Serial.println(F("SSD1306 allocation failed"));
    pantalla = false;
  }else{
    intro();
    pantallaOLED("Asistente\n  0xFF", 2, true);
    delay(1000);
    pantalla = true;
  }
  
  // Velocidad de comunicación:
  Serial.begin(115200);
  cmd.reserve(10);

  introSerial();

}

void loop() {
  char letra;
  bool error = false;
  WiFiClient cliente;

  pixels.clear();
  pixels.setPixelColor(0, pixels.Color(0,250,0));
  pixels.show();
  delay(100);
  
  // put your main code here, to run repeatedly:
  if (Serial.available() > 0){
    letra = (char)Serial.read();

    if(letra != 8){
      cmd += letra; 
    }

    if(letra == '\n' || letra == '\r') {
      cmd.trim();
      error = instrucciones(cmd);
      cmd = "";
    }else if( letra == 8 && cmd.length() > 0){
      cmd.setCharAt((cmd.length() - 1), ' ');
      cmd.trim();
    }
    if(error) {
      pantallaOLED("Error", 2, true);
      correcto(error);
      error = false;
    }
  }

  switch(flagWifi) {
    // Carga configuración AP
    case 0:
      WiFi.softAP(ssid, password);
      WiFi.softAPConfig(IP, GW, MSK);
      server.begin();
      flagWifi = 1;
      Serial.println("Servicio iniciado...");
      delay(1000);
    break;

    // Inicializa el servicio
    case 1:
      cliente = server.available();
      if(servicioWeb(cliente)){
        if(pantalla) {
          pantallaOLED("Felicidades",2, true);
        }else {
          Serial.println(F("Felicidades!!"));
        }
        flagWifi = 2;
      }
    break;

    default:
    break;
  }
  pixels.clear();
  pixels.setPixelColor(1, pixels.Color(0,0,250));
  pixels.show();
  delay(100);
}

bool instrucciones(String instr){
  // Instrucción no valida.
  bool error = false;

  //Se escogio visualizar archivo.
  if(instr.equals("file") && stage == 1){
    Serial.println("> Looading....");
    for(int i = 0; i < 85; i++) {
      Serial.println(F(img[i]));
    }
    //Se habilita escenario de habilitar inalámbrico
    stage = 2;
  //Se escogio mostrar llave.
  }else if(instr.equals("help") && stage == 0){
    if(pantalla){
      pantallaOLED("[flag1]\n 9601",2, false);
    }else{
      Serial.println(F("[flag1]: 9601"));
    }
    
    correcto(false);
    Serial.println(F("[flag1: 9601]"));
    Serial.println(F("help:"));
    Serial.println(F("file--------> Cargar archivo"));
    Serial.println(F("XXX--------> XXXXXXXXXXXXXX"));
    Serial.println(F("XXX--------> XXXXXXXXXXXXXX"));
    Serial.println(F("XXX--------> XXXXXXXXXXXXXX"));

    if(pantalla){
      pantallaOLED("Stage 1\nCompleto!",2, true);
    }else {
      Serial.println(F("Stage 1\nCompleto!"));
    }
    
    //Se habilita escenario de mostrar archivo.
    stage = 1;
  //Se escogio mostrar mensaje
  }else if(instr.equals("ip") && stage == 3){
    //Serial.println(WiFi.softAPIP());
    if(pantalla){
      pantallaOLED("Stage 2\nCompleto", 2, true);
      pantallaOLED("IP:\n 10.20.1.2",2, false);  
    }else{
      Serial.println(F("Stage 2\nCompleto"));
      Serial.println(F("IP: 10.20.1.2"));
    }
    correcto(false);
    
    stage = 2;
  //Limpiar pantalla
  }else if(instr.equals("clear")){
    if(pantalla){
      pantallaOLED("Hack me!!\nIf you can", 2, true);
    }else{
      Serial.println(F("Hack me!!\nIf you can"));
    }
    
    stage = 0;
  // Comando incorrecto
  }else if(instr.equals("run") && stage == 2){
    flagWifi = 0;
    Serial.println("\nLNTGYYLHGM5CAMZVGQ4V2CSXNFTGSICDKRDDU6LYGY3VG3SNO4FA====");
    if(pantalla){
     pantallaOLED("Service on",2, false); 
    }else {
      Serial.println(F("Service on"));
    }
    
    correcto(false);
    //Se habilita escenario para mostrar IP del Badge
    stage = 3;
  }else {
    Serial.println(F("Error"));
    cmd = "";
    error = true;
  }

  return error;
}

boolean servicioWeb(WiFiClient cliente){
  boolean ganador = false;

  if(cliente) {
    String lineaCaptura = "";
    String tmp = "";
    while(cliente.connected()){
      if(cliente.available()) {
        char c = cliente.read();
        Serial.write(c);
        if(c == '\n') {
          if(lineaCaptura.length() == 0){
            cliente.println("HTTP/1.1 200 OK");
            cliente.println("Content-type:text/html");
            cliente.println();

            // Cuerpo de la pagina
            cliente.print("<html><head><title>CTF</title></head><body><h1>Validar banderas</h1>");
            cliente.print("<p>Para validar las banderas, escribe lo siguiente en la url: http://10.20.1.2/?flag1=valor1&flag2=valor2&flag3=valor3</p>");
            cliente.print("<p>Donde valor1, valor2 y valor3 son los códigos de las banderas encontradas</p>");
            cliente.print("</body></html>");

            // Termina un salto de línea
            cliente.println();
            break;
          }else{
            lineaCaptura= "";
          }
        } else if(c != '\r'){
          lineaCaptura += c;
          tmp += c;
        }
      }
    }
    if(tmp.indexOf("flag1") >= 0 || tmp.indexOf("flag2") >= 0 && tmp.indexOf("flag3") >= 0){
      ganador = stageFinal(tmp);
    }
    cliente.stop();
    Serial.println("Cliente desconectado.");
  }
  return ganador;
}

bool stageFinal(String url){
  bool ganador = false;
  int i = 0;
  String flag1, flag2, flag3;

  if(url.indexOf("9601") < 0 || url.indexOf("6578") < 0 || url.indexOf("3549") < 0){
    ganador = false; //Falta uno o varios flags
  }else {
    ganador = true; //Todos los flags encontrados
  }

  return ganador;
}

void pantallaOLED(String msg, int sizef, boolean scroll ){
  display.clearDisplay();
  display.setTextSize(sizef);
  display.setTextColor(SSD1306_WHITE);
  display.setCursor(0,0);
  display.println(msg);
  if(scroll){
    display.startscrollleft(0x00, 0x07);
  }else {
    display.stopscroll();
  }
  display.display();
}

void correcto(boolean f) {  
  pixels.clear();
  for(int i = 0; i < 5; i++){
    if(f) {
      pixels.clear();
      pixels.setPixelColor(0, pixels.Color(250, 0, 0)); 
      pixels.show();
      delay(500);
      
      pixels.clear();
      pixels.setPixelColor(1, pixels.Color(250, 0, 0));
      pixels.show();
      delay(500);
    }else{
      pixels.clear();
      pixels.setPixelColor(0, pixels.Color(0, 250, 0));
      pixels.show();
      delay(500);

      pixels.clear();
      pixels.setPixelColor(1, pixels.Color(0, 250, 0));
      pixels.show();
      delay(500);
    }
  }
}

void introSerial(){
  Serial.println(F("\n\n##############################"));
  Serial.println(F("# SHALL WE PLAY TO BE HACKER #"));
  Serial.println(F("#  by Darkwolf               #"));
  Serial.println(F("##############################\n"));
}

void intro(void){
  display.clearDisplay();

  display.drawBitmap((display.width() - LOGO_WIDTH)/2, (display.height() - LOGO_HEIGHT)/2, logo, LOGO_WIDTH, LOGO_HEIGHT, 1);
  display.display();
  delay(3000);
}
