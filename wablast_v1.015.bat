<!-- :
:: whatsapp_blasting_v1.015.bat
@echo off
for /f "tokens=1,2,3,4,5,6 delims=;;;;;;" %%a in ('mshta.exe "%~f0"') do (
  set "textmsg=%%a"
  set "csvpath=%%b"
  set "docpath=%%c"
  
  set "SCHEDULE=%%d"
  set "sc_date=%%e"
  set "sc_time=%%f"
)

set "doc_path0=C:\tagui\doc_text.txt"
set "msg_path0=C:\tagui\msg_text.txt"
IF %SCHEDULE% EQU 0 >"%doc_path0%" echo(%docpath%
IF %SCHEDULE% EQU 0 >"%msg_path0%" echo(%textmsg%

set "HH=%time:~0,2%"
if %HH% LSS 10 set "HH=0%HH: =%"
set "DATE_TIME=%date:~-4%%date:~3,2%%date:~0,2%%HH%%time:~3,2%%time:~6,2%"
set "DATE_TIME=%DATE_TIME: =%"
set "doc_path1=C:\tagui\schedule\doc_%DATE_TIME%.txt"
set "msg_path1=C:\tagui\schedule\msg_%DATE_TIME%.txt"
IF %SCHEDULE% EQU 1 >"%doc_path1%" echo(%docpath%
IF %SCHEDULE% EQU 1 >"%msg_path1%" echo(%textmsg%

IF %SCHEDULE% EQU 0 (
  start tagui C:\tagui\wablast.tag %csvpath% %doc_path0% %msg_path0% -t -q 
)
IF %SCHEDULE% EQU 1 (
  SCHTASKS /CREATE /TN "WBtask_%DATE_TIME%" /SC ONCE /TR "tagui C:\tagui\wablast.tag %csvpath% %doc_path1% %msg_path1% -t -q && SCHTASKS /delete /TN WBtask_%DATE_TIME% /f" /SD %sc_date% /ST %sc_time%
)

exit /b
-->
<html>
<head>
  <title>Whatsapp Blasting</title>
  <style>
  span{color:#999999}
  input{width:300px;height:30px;padding:4px 3px;margin-bottom:10px}
  input.sc_date{width:100px;margin-bottom:10px}
  input.sc_time{width:65px;margin-bottom:10px}
  select{width:300px;height:30px;padding:4px 3px;margin-bottom:10px}
  textarea{padding:4px 3px;margin-bottom:10px}
  button{padding:5px 20px}
  </style>
</head>
<body>
  <script language='javascript' >
  window.resizeTo(480,565);
  function pipePass() {
    var textmsg = document.getElementById('textmsg').value;
    var csvpath = document.getElementById('csvpath').value;
    var docpath = document.getElementById('docpath').value;
    
    var schedule = document.getElementById('schedule').value;
    var sc_date = document.getElementById('sc_date').value;
    var sc_time = document.getElementById('sc_time').value;
    if(textmsg === "") textmsg = "empty";
    if(csvpath === "") csvpath = "empty";
    if(docpath === "") docpath = "empty";
    textmsg = encodeURIComponent(textmsg);
    var mix = textmsg+";;;;;;"+csvpath+";;;;;;"+docpath+";;;;;;"+schedule+";;;;;;"+sc_date+";;;;;;"+sc_time;
    var fso = new ActiveXObject('Scripting.FileSystemObject').GetStandardStream(1);
    close(fso.Write(mix));
  }
  </script>
  <center><h2>Whatsapp Blasting</h2></center>
  CSV File Path: <span>C:\tagui\wablast.csv</span><br>
    <input type="text" id="csvpath" value=""><br>
  Attach Doc Path: <span>C:\tagui\uploads\wablast.pdf,C:\tagui\uploads\wablast.doc</span><br>
    <textarea id="docpath" rows="2" cols="50"></textarea><br>
  Text Message:<br>
    <textarea id="textmsg" rows="5" cols="50"></textarea><br>
  Create Schedule:<br>
    <select id="schedule"><option value="0">No</option><option value="1">Yes</option></select><br>
  Schedule Date Time: <span class="sc_date">DD/MM/YYYY</span>  <span class="sc_time">HH:MM</span><br>
    <input type="text" id="sc_date" class="sc_date" value="" size="10"> 
    <input type="text" id="sc_time" class="sc_time" value="" size="5"><br>
  <br>
  <center><button onclick='pipePass()'>Send Blast</button></center>
</body>
</html>