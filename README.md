<img src="https://raw.githubusercontent.com/ardyan69/wa/main/imgs/logo-hotag-A.png" height="111" align="right">

# Whatsapp Blasting with TAGUI RPA

**Test on `Windows 10` (Resolutin: 1366 x 768) with `Google Chrome v79` and `Whatsapp Desktop`**


Using PROTOCOL for opening Whatsapp Application.

PROTOCOL is like:

`mailto://` - `tel://` - etc

By using the PROTOCOL makes the process 15%~20% faster.
Because if you use a link like this https://api.whatsapp.com/send?phone=PHONENUMBER&text=TEXTMESSAGE, you have to click the button to proceed to whatsapp app.
But with the protocol, you will be directly directed to the whatsapp application and the destination number as well as the text message.

Use an old version of Google Chrome, with version 79 or older, because Google Chrome from version 80 or later, Google Chrome disables the PROTOCOL handler prompt, so we have to add a click process if using the latest version of Google Chrome.

Feature:
- Can send multiple documents attachment.
- Can create schedule for running Blast later.


I created a User Interface using a batch script, run the `wablast.bat` file.
![ui_wablast](https://raw.githubusercontent.com/ardyan69/wa/main/imgs/ui_wablast.png)
