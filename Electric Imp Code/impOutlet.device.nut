outOnePin <- hardware.pin2;
outTwoPin <- hardware.pin5;
outThreePin <- hardware.pin7;

outOnePin.configure(DIGITAL_OUT);
outTwoPin.configure(DIGITAL_OUT);
outThreePin.configure(DIGITAL_OUT);
 
function setOut1(outState) {
  server.log("Set out1: " + outState);
  
  if(outState == 1){
      outOnePin.write(1);
      server.log("out1 ON");
      
  }else{
      outOnePin.write(0);
      server.log("out1 Off");
  }
}

function setOut2(outState) {
  server.log("Set out2: " + outState);
  
  if(outState == 1){
      outTwoPin.write(1);
      server.log("out2 ON");
      
  }else{
      outTwoPin.write(0);
      server.log("out2 Off");
  }
}

function setOut3(outState) {
  server.log("Set out3: " + outState);
  
  if(outState == 1){
      outThreePin.write(1);
      server.log("out3 ON");
      
  }else{
      outThreePin.write(0);
      server.log("out3 Off");
  }
}
 
agent.on("out1", setOut1);
agent.on("out2", setOut2);
agent.on("out3", setOut3);