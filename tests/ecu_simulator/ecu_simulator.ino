#include <mcp_can.h>

#define CAN_SPEED (CAN_500KBPS)

MCP_CAN CAN0(10);

void setup() {
  Serial.begin(115200);
  if(CAN0.begin(MCP_ANY, CAN_SPEED, MCP_8MHZ))
    Serial.println("CAN ok");
  else
    Serial.println("CAN fail");
  CAN0.setMode(MCP_NORMAL);
}

byte data[8] = {0xE0, 0x01, 0x02, 0x03, 0x04, 0x2A, 0x06, 0x07};

void loop() {
  data[0] = random(256);
  data[1] = random(256);
  data[2] = random(256);
  data[3] = random(256);
  data[4] = random(256);
  data[5] = random(256);
  data[6] = random(256);
  data[7] = random(256);
  byte packetStatus = CAN0.sendMsgBuf(random(256), 0, 8, data);
  
  //if(packetStatus == CAN_OK)
    //Serial.println("packet sent");
  //else
    //Serial.println("packet not sent");
}


