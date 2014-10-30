if [ -e /persist/macaddr ]; then
 setprop ro.macaddr.exit true
 
 #this property should be delete after macaddr be writed
 if [ -e /data/property/persist.service.check_addr ]; then
  echo "rm property"
  rm /data/property/persist.service.check_addr
 fi

 echo "macaddr exist"
else
 setprop ro.macaddr.exit false
 echo "macaddr not exist"
fi

echo "exit"
