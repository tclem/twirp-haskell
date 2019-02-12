import os.path

from haberdasher import *

def run():
    client = HealthClient("http://localhost:8003")
    print client.check(Ping(service="test"))

if __name__ == '__main__':
    run()
