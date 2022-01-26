for item in `ls`
do
      fileName=`echo $item | awk -F. '{ print $1 }'`
      ExtensionName=`echo $item | awk -F. '{ print $2 }'` 
      if [ -d $ExtensionName $fileName  ]
      then
         echo "Im standing Inside If Condition :)"
         rm -rf $ExtensionName $fileName 
      fi
      mkdir $ExtensionName $fileName
      mv $item $ExtensionName $fileName
done