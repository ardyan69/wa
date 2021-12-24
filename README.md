# Whatsapp Blasting with TAGUI RPA

Test on Windows 10, with Google Chrome v79
Using PROTOCOL for opening Whatsapp Application.
PROTOCOL is like:
mailto:// - tel:// - etc

By using the PROTOCOL makes the process 15%~20% faster.
Because if you use a link like this https://api.whatsapp.com/send?phone=PHONENUMBER&text=TEXTMESSAGE, you have to click the button to proceed to whatsapp app.
But with the protocol, you will be directly directed to the whatsapp application and the destination number as well as the text message.

Use an old version of Google Chrome, with version 79 or older, because Google Chrome from version 80 or later, Google Chrome disables the PROTOCOL handler prompt, so we have to add a click process if using the latest version of Google Chrome.



Feature:
- can send multiple documents attachment.
- can make schedule for runnig blast later.
