// WA Blast RPA By ardhie
keyboard [space][enter]
load `p1` to csvData
data = csvData.split('\n')
data_length = data.length-1

load `p3` to txtmsg

if p2 not equals to 'empty'
  load `p2` to attach
else
  attach = ''

whatsapp://send?phone=`data[0].trim()`&text=`txtmsg`
wait 3.75
if attach not equals to ''
  attach_doc = attach.split(',')
  if attach_doc.length more than 0
    for x from 0 to attach_doc.length-1
      click (430,696)
      wait 0.15
      click (430,430)
      clipboard(attach_doc[x].trim())
      keyboard [ctrl]v[enter]
      wait 2.75
      click (977,677)
keyboard [enter]
keyboard [enter]
keyboard [enter]

for n from 1 to data_length
  whatsapp://send?phone=`data[n].trim()`&text=`txtmsg`
  wait 3.75
  if attach not equals to ''
    if attach_doc.length more than 0
      for x from 0 to attach_doc.length-1
        click (430,696)
        wait 0.15
        click (430,430)
        clipboard(attach_doc[x].trim())
        keyboard [ctrl]v[enter]
        wait 2.75
        click (977,677)
  keyboard [enter]
  keyboard [enter]
  keyboard [enter]

echo "Whatsapp Blasting End........."
run cmd /c del `p2` /s /f /q
run cmd /c del `p3` /s /f /q

run cmd /c C:\tagui\src\end_processes.cmd
