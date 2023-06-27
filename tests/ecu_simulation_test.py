import can

with can.interface.Bus(bustype='vector', app_name=None, channel=0, bitrate=500000) as bus:
    while True:
        msg = bus.recv()
        if msg.arbitration_id == 0x7E8:
            if msg.data[1] == 0x01:
                if msg.data[2] == 0x0D:
                    bus.send(
                        can.Message(
                            arbitration_id=0x7E8,
                            data=[0x01, 0x41, msg.data[2], 0x79]
                        )
                    )
        
    bus.shutdown()
