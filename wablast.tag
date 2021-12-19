// WA Blast RPA By ardhie
click imgs/maximize_chrome.png

load wablast.csv to dataWA

data = dataWA.split('\n')
attach = data[1].trim()
icon_attach = ""

if attach not equals to ''
  icon_attach = attach
  if attach equals to 'image'
    file://`data[2].trim()`
    rclick (683,333)
    click imgs/copy_image.png
  
click imgs/wa_app.png

whatsapp://send?phone=`data[3].trim()`&text=`data[0].trim()`
wait 2
if attach not equals to ''
  if attach equals to 'image'
    keyboard [ctrl]v
  else
    click imgs/icon_attach.png
    click imgs/icon_seldoc.png
    click imgs/icon_`icon_attach`.png
    keyboard [enter]
  click imgs/wa_send.png
wait 0.425
keyboard [enter]
keyboard [enter]
keyboard [enter]

for n from 4 to data.length-1
  whatsapp://send?phone=`data[n].trim()`&text=`data[0].trim()`
  wait 1.65
  if attach not equals to ''
    if attach equals to 'image'
      keyboard [ctrl]v
    else
      click imgs/icon_attach.png
      click imgs/icon_seldoc.png
      click imgs/icon_`icon_attach`.png
      keyboard [enter]
    click imgs/wa_send.png
  wait 0.425
  keyboard [enter]
  keyboard [enter]
  keyboard [enter]
