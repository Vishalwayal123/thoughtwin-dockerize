const chatbox = jQuery.noConflict();
var flagmsg = []
// var spl = flagmsg.spilt('\n');
var messages = [], //array that hold the record of each string in chat
  lastUserMessage = "", //keeps track of the most recent input string from the user
  botMessage = "", //var keeps track of what the chatbot is going to say
  botName = '<img src="/assets/chatlogo.png">', //name of the chatbot
  unique = []
  user_name = "", //user name variable
  mobile_number = "", // user mobile number variable
  user_email = "",  // user email variable 
  is_validate = false;
  talking = true; //when false the speach function doesn't work
  
  // flag variable
  var flag = 0
 
//edit this function to change what the chatbot says
function chatbotResponse() {
  
  botMessage = "Thank You User"; //the default message
  talking = true;

  if (user_details == 'hi') {
    botMessage = 'hi';
  }

  if (lastUserMessage == 'hello') {
    botMessage = 'hello' ;
  }
  if (lastUserMessage == 'hi') {
    botMessage = 'hi';
  }
  if (lastUserMessage == 'hello') {
    botMessage = 'hello';
  }
  if (flag == 0) {
    botMessage = "hi"
  }
  if (flag == 1) {
    botMessage = "Please Enter Your Name"; //the default message I'm confused

  }else if (flag == 2) {
    botMessage = "Please Enter Your Contact Number";

  }else if (flag == 3) {
    botMessage = "Please Enter Your Email";
  }
}
//this runs each time enter is pressed.
//It controls the overall input and output
function newEntry() {
  //if the message from the user isn't empty then run 
  if (document.getElementById("chatbox").value != "") {
    is_validate = false;
    //pulls the value from the chatbox ands sets it to lastUserMessage
    lastUserMessage = document.getElementById("chatbox").value;
     var filter = /^\d*(?:\.\d{1,2})?$/;
     var testEmail = /^[A-Z0-9._%+-]+@([A-Z0-9-]+\.)+[A-Z]{2,4}$/i;
     var nametest = /^[a-zA-Z\s-, ]+$/;
      if (botMessage == "Please Enter Your Name") {
        if ( nametest.test(lastUserMessage) ) {   
          flagmsg.push(lastUserMessage)
          unique.push(lastUserMessage)
          $("#mobile-valid").removeClass("hidden");
          $("#folio-invalid").addClass("hidden");
      } else {
          alert('Please enter name'); 
          flagmsg = flagmsg.slice(0, -1)
          unique = unique.slice(0, -1)
          is_validate = true;
         $("#folio-invalid").removeClass("hidden");
         $("#mobile-valid").addClass("hidden");
         return false;
      }
      }
      if (botMessage == "Please Enter Your Contact Number"){
      if (filter.test(lastUserMessage)) {
        if(lastUserMessage.length== 10 || lastUserMessage.length==11 || lastUserMessage.length==12 || lastUserMessage.length==13 || lastUserMessage.length==14  ){  
          flagmsg.push(lastUserMessage)
          unique.push(lastUserMessage)
          $("#mobile-valid").removeClass("hidden");
          $("#folio-invalid").addClass("hidden");
        } else {
           is_validate = true;
           flagmsg = flagmsg.slice(0, -1)
           unique = unique.slice(0, -1)
           alert('Please put 10  digit mobile number');
           $("#folio-invalid").removeClass("hidden");
           $("#mobile-valid").addClass("hidden");
            return false;
          }
        }else {
           is_validate = true;
           flagmsg = flagmsg.slice(0, -1)
           unique = unique.slice(0, -1)
           alert('Not a valid number');
           $("#folio-invalid").removeClass("hidden");
           $("#mobile-valid").addClass("hidden");
           return false;
        }
      }
     if (botMessage == "Please Enter Your Email" ) {
     	if ( testEmail.test(lastUserMessage) ) {   
        flagmsg.push(lastUserMessage)
        unique.push(lastUserMessage)
        $("#mobile-valid").removeClass("hidden");
        $("#folio-invalid").addClass("hidden");
      } else {
        is_validate = true;
        flagmsg = flagmsg.slice(0, -1)
        unique = unique.slice(0, -1)
        alert('Please enter valid email');
        $("#folio-invalid").removeClass("hidden");
        $("#mobile-valid").addClass("hidden");
        return false;
      }
     } 
     if (botMessage == "Thank You User" ) {
         return false;
     }

    //sets the chat box to be clear
    document.getElementById("chatbox").value = "";
    //adds the value of the chatbox to the array messages
    messages.push(lastUserMessage);
    //Speech(lastUserMessage);  //says what the user typed outloud
    //sets the variable botMessage in response to lastUserMessage
    chatbotResponse();
    //add the chatbot's name and message to the array messages
    messages.push("<b>" + botName + "</b> " + botMessage);
    // says the message using the text to speech function written below
    Speech(botMessage);
    //outputs the last few array elements of messages to html
    for (var i = 1; i < 8; i++) {
      if (messages[messages.length - i]){
        document.getElementById("chatlog" + i).innerHTML = messages[messages.length - i];
      }
      if (messages["length"] == 2 || messages["length"] == 4 || messages["length"] == 6) {
        user_msg_lenght = messages["length"];
        bot_msg_length = user_msg_lenght - 1;
        document.getElementById("chatlog" + user_msg_lenght).style.backgroundColor = "#01274e";
        document.getElementById("chatlog" + bot_msg_length).style.backgroundColor = "#f1f1f1";
        if (messages["length"] == 6) {
          last_id = 7;
          document.getElementById("chatlog" + last_id).style.backgroundColor = "#f1f1f1";
        }
      }
    }
  }
}
//text to Speech
function Speech(say) {
  if ('speechSynthesis' in window && talking) {
    var utterance = new SpeechSynthesisUtterance(say);
    speechSynthesis.speak(utterance);
  }
}
//runs the keypress() function when a key is pressed
document.onkeypress = keyPress;
//if the key pressed is 'enter' runs the function newEntry()
function keyPress(e) {
  var x = e || window.event;
  var key = (x.keyCode || x.which);
  if (key == 13 || key == 3) {
    if (getUserData()) {
      return true;
    } 
    else {
      newEntry();
    }
  }
}
//clears the placeholder text ion the chatbox
//this function is set to run when the users brings focus to the chatbox, by clicking on it
function placeHolder() {
  document.getElementById("chatbox").placeholder = "";
} 

function getUserData() {
  if(flag == 0) {
    user_name = document.getElementById('chatbox');
  } else if (flag == 1) {
    mobile_number = document.getElementById('chatbox');
  } else if (flag == 2) {
    user_email = document.getElementById('chatbox');
  }
  //  flag value plus by 1
  if (is_validate != true) {
    flag ++
    if (document.getElementById("chatbox").value != "") {
      // get user details 
       user_details = document.getElementById("chatbox").value;
       // push msg in flagmsg  var  flagmsgstor
       flagmsg.push(user_details);
       unique = flagmsg.filter(onlyUnique);
    }
  }


  // submit form
  if (unique.length == 4) {
    $.ajax({
      type: "GET",
      url: "/home/mailer",
      data: {
        flagmsg: unique.toString()
      }
    });
  }  
}

function onlyUnique(value, index, self) {
  return self.indexOf(value) === index;
}

chatbox(() => {
  chatbox(".chatbox-open").click(() =>
    chatbox(".chatbox-popup, .chatbox-close").fadeIn()
  );

  chatbox(".chatbox-close").click(() =>
    chatbox(".chatbox-popup, .chatbox-close").fadeOut()
  );

  chatbox(".chatbox-maximize").click(() => {
    chatbox(".chatbox-popup, .chatbox-open, .chatbox-close").fadeOut();
    chatbox(".chatbox-panel").fadeIn();
    chatbox(".chatbox-panel").css({ display: "flex" });
  });

  chatbox(".chatbox-minimize").click(() => {
    chatbox(".chatbox-panel").fadeOut();
    chatbox(".chatbox-popup, .chatbox-open, .chatbox-close").fadeIn();
  });

  chatbox(".chatbox-panel-close").click(() => {
    chatbox(".chatbox-panel").fadeOut();
    chatbox(".chatbox-open").fadeIn();
  });
});
