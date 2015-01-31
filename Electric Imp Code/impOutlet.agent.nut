// Log the URLs we need
server.log("Turn LED On: " + http.agenturl() + "?out1=1");
 
function requestHandler(request, response) {
  try {
    if ("out1" in request.query) {
      
      if (request.query.out1 == "1" || request.query.out1 == "0") {

        local out1State = request.query.out1.tointeger();
 
        device.send("out1", out1State); 
      }
    }
    
     if ("out2" in request.query) {
      
      if (request.query.out2 == "1" || request.query.out2 == "0") {

        local out2State = request.query.out2.tointeger();
 
        device.send("out2", out2State); 
      }
    }
    
     if ("out3" in request.query) {
      
      if (request.query.out3 == "1" || request.query.out3 == "0") {

        local out3State = request.query.out3.tointeger();
 
        device.send("out3", out3State); 
      }
    }

    response.send(200, "OK");
  } catch (ex) {
    response.send(500, "Internal Server Error: " + ex);
  }
}
 
http.onrequest(requestHandler);