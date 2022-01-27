for item in `ls`
do
      extensionName=`echo $item | awk -F. '{ print $2 }'`
      case $extensionName in
           java)
           echo "$item Is A Java File"
           ;;
           js)
           echo "$item Is A JavaScript File"
           ;;
           css)
           echo "$item Is A CSS File"
           ;;
           py)
           echo "$item Is A Python File"
           ;;
           sh)
           echo "$item Is A Shell-Script File"
           ;;
           *)
           echo "Something Wrong ..."
           ;;
       esac
done
