<img src="https://raw.githubusercontent.com/ardyan69/wa/main/imgs/logo-hotag-A.png" height="111" align="right">

# Whatsapp Blasting with TAGUI RPA

**Test on `Windows 10` (Resolutin: 1366 x 768) with `Google Chrome v79` and `Whatsapp Desktop`**


Using PROTOCOL for opening Whatsapp Application.

PROTOCOL is like:

`mailto://` - `tel://` - `file://` - `ftp://` - etc

By using the PROTOCOL makes the process 15%~20% faster.
Because if you use a link like this https://api.whatsapp.com/send?phone=PHONENUMBER&text=TEXTMESSAGE, you have to click the button to proceed to whatsapp app.
But with the protocol, you will be directly directed to the whatsapp application and the destination number as well as the text message.

Use an old version of Google Chrome, with version 79 or older, because Google Chrome from version 80 or later, Google Chrome disables the PROTOCOL handler prompt, so we have to add a click process if using the latest version of Google Chrome.

#### Feature:
- Can send multiple documents attachment.
- Can create schedule for running Blast later.


#### User Interface:
I created a User Interface using a batch script, run the `wablast.bat` file.

![ui_wablast](https://raw.githubusercontent.com/ardyan69/wa/main/imgs/ui_wablast.png)

- `CSV File Path` enter the folder path where you saved your CSV doc, this CVS is the data for the whatsapp number, don't forget to add the area code for each whatsapp number.
- `Attach Doc Path` if you want to send a file attachment, enter the folder path where you save the file you want to send. Of course, you can also send more than one file attachment, by using (comma) in each path. Or if you only want to send text messages, leave this field blank.
- `Text Message` what text do you want to send.
- `Create Schedule` Yes or No. Run the script for later at the time you want. If you select No, then the script will run immediately.
- `Schedule Date Time` DD/MM/YYYY - HH-MM. Because the settings on my windows are in the Indonesian region and the date format is DD/MM/YYYY, check the date and time format on your windows to fill this out.
