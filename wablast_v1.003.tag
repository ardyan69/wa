// WA Blast RPA By ardhie
icon_attach = 'https://raw.githubusercontent.com/ardyan69/wa/main/imgs/icon_attach.png'
icon_seldoc = 'https://raw.githubusercontent.com/ardyan69/wa/main/imgs/icon_seldoc.png'
wa_send = 'https://raw.githubusercontent.com/ardyan69/wa/main/imgs/wa_send.png'

load `p1` to csvData
data = csvData.split('\n')
data_length = data.length-1

load `p3` to txtmsg

if p2 not equals to 'empty'
  attach = p2
else
  attach = ''

attach_doc = attach.split(',')

// for p from 0 to 100
  // progress[p] = data_length * (p/100)

clipboard(attach)

whatsapp://send?phone=`data[0].trim()`&text=`txtmsg`
wait 2
if attach not equals to ''
  if attach_doc.length more than 0
    for x from 0 to attach_doc.length-1
      click `icon_attach`
      click `icon_seldoc`
      clipboard(attach_doc[x].trim())
      keyboard [ctrl]v[enter]
      click `wa_send`
      wait 0.325
keyboard [enter]
keyboard [enter]
keyboard [enter]

for n from 1 to data_length
  whatsapp://send?phone=`data[n].trim()`&text=`txtmsg`
  wait 1.75
  if attach not equals to ''
    if attach_doc.length more than 0
      for x from 0 to attach_doc.length-1
        click `icon_attach`
        click `icon_seldoc`
        clipboard(attach_doc[x].trim())
        keyboard [ctrl]v[enter]
        click `wa_send`
        wait 0.325
  keyboard [enter]
  keyboard [enter]
  keyboard [enter]
