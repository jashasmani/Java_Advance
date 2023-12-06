<!DOCTYPE html>
<html>
    <head>
        <title>WebSocket Group Chat</title>
        <script>
            var socket = new WebSocket("ws://localhost:8080/9.WebSocket/chat");

            socket.onmessage = function (event) {
                var chatArea = document.getElementById("chatArea");
                chatArea.innerHTML += event.data + "<br>";
            };

            function sendMessage() {
                var message = document.getElementById("message").value;
                socket.send(message);
                document.getElementById("message").value = "";
            }
        </script>
    </head>

    <body>
        <div>
            <h1>WebSocket Group Chat</h1>
            <div id="chatArea" style="border: 1px solid #000; height: 200px; width: 300px; overflow-y: scroll;"></div>
            <input type="text" id="message" placeholder="Type a message">
            <button onclick="sendMessage()">Send</button>
        </div>
    </body>
</html>