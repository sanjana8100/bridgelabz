cd ../
mkdir main
mkdir main/sub1
mkdir main/sub2
mkdir main/sub3
cd Items

for item in `ls`
do
	folderNames=`echo $item | awk -F. '{ print $1 }'`
	folderExt=`echo $item | awk -F. '{ print $2 }'`
	mkdir -p ../main/sub2/$folderExt/$folderNames
	cp -r $item ../main/sub2/$folderExt/$folderNames
done


