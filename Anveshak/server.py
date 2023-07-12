#!/usr/bin/env python3
import http.server
import time
import os


hostName = "localhost"
serverPort = 8080

class MyServer(http.server.SimpleHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-type", "text/html")
        self.end_headers()
        #self.wfile.write(bytes("<html><head><title>Galileo</title></head>", "utf-8"))
        #self.wfile.write(bytes("<body bgcolor=orange>", "utf-8"))
        if self.path=="/html":
            self.path="webpage.html"
            return http.server.SimpleHTTPRequestHandler.do_GET(self)
        if self.path=="/":
            os.system("gnome-terminal -- /bin/sh -c \"~/caesar2020/ROSCORE.sh;$SHELL\"")
            os.system("gnome-terminal -- /bin/sh -c \"~/caesar2020/ping.sh;$SHELL\"")
            self.path="root.html"
            return http.server.SimpleHTTPRequestHandler.do_GET(self)
        elif self.path=="/drive":
            #self.wfile.write(bytes("<h1>Drive</h1>","utf-8"))
            os.system("gnome-terminal -- /bin/sh -c \"sleep 1;~/caesar2020/DRIVE.sh;$SHELL\"")
            os.system("gnome-terminal -- /bin/sh -c \"~/caesar2020/JOY_ARM.sh;$SHELL\"")
            os.system("gnome-terminal -- /bin/sh -c \"sleep 2;~/caesar2020/rosserial_arm.sh;$SHELL\"")
            self.path="drive.html"
            return http.server.SimpleHTTPRequestHandler.do_GET(self)
            #os.system("gnome-terminal -- /bin/sh -c \"echo hello; exec /bin/sh -i\" &")
        elif self.path == "/cam":
            #self.wfile.write(bytes("<h1>Camera Feed</h1>","utf-8"))
            os.system("gnome-terminal -- /bin/sh -c \"~/caesar2020/camerafeed.sh;$SHELL\"")
        elif self.path == "/arm":
            self.wfile.write(bytes("<h1>Arm</h1>","utf-8"))
            os.system("gnome-terminal -- /bin/sh -c \"~/caesar2020/JOY_ARM.sh;$SHELL\"")
            os.system("gnome-terminal -- /bin/sh -c \"sleep 2;~/caesar2020/rosserial_arm.sh;$SHELL\"")
            os.system("gnome-terminal -- /bin/sh -c \"sleep 2;~/caesar2020/ARM.sh;$SHELL\"")
            self.path="arm.html"
            return http.server.SimpleHTTPRequestHandler.do_GET(self)

        elif self.path == "/killall":
            self.wfile.write(bytes("<h1> Nodes killed </h1>","utf-8"))
            os.system("gnome-terminal -- /bin/sh -c \"~/caesar2020/KillRoscore.sh;$SHELL\"")
        #self.wfile.write(bytes("<h1> Team Anveshak </h1>", "utf-8"))
        #self.wfile.write(bytes("<a href=\"http://localhost:8080/drive\" target=\"_blank\"> Go to drive </a></h2>", "utf-8"))
        #self.wfile.write(bytes("<h2><a href=\"http://localhost:8080/cam\" target=\"_blank\"> Go to camera feed </a></h2></body></html>", "utf-8"))
        #self.wfile.write(bytes("<h2><a href=\"http://localhost:8080/killall\" target=\"_blank\">Kill All Nodes</a></h2></body></html>", "utf-8"))
        #self.wfile.write(bytes("<h2><a href=\"http://localhost:8080/cam\" target=\"_blank\"> Go to Arm </a></h2></body></html>", "utf-8"))


if __name__ == "__main__":        
    webServer = http.server.HTTPServer((hostName, serverPort), MyServer)
    print("Server started http://%s:%s" % (hostName, serverPort))

    try:
        webServer.serve_forever()
    except KeyboardInterrupt:
        pass

    webServer.server_close()
    print("Server stopped.")
