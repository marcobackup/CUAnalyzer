import can

with can.interface.Bus(bustype='vector', app_name=None, channel=0, bitrate=500000) as bus:
    while True:
        bus.send(
            can.Message(
                arbitration_id=0x7E8,
                data=[0x02, 0x01, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00],
                dlc=3
            )
        )
        print(bus.recv())
    bus.shutdown()
