#######################################
#                                     #
# USE THIS SCRIPT TO CREATE NEW PAGE  #
#                                     #
#######################################

scriptPath=${0%/*}
page=$scriptPath"/../pages/"$1".page"
if [ ! -f $page ];
	then
		echo "#######################################" > $page
		echo "#                                     #" >> $page
		echo "#              VARIABLES              #" >> $page
		echo "#                                     #" >> $page
		echo "#######################################" >> $page
		echo "action=\"\"" >> $page
		echo "" >> $page
		echo "#######################################" >> $page
		echo "#                                     #" >> $page
		echo "#              FUNCTIONS              #" >> $page
		echo "#                                     #" >> $page
		echo "#######################################" >> $page
		echo "function page_action" >> $page
		echo "{" >> $page
		echo "	echo \$1" >> $page
		echo "}" >> $page
		echo "" >> $page
		echo "#######################################" >> $page
		echo "#                                     #" >> $page
		echo "#           PAGE CONTENT              #" >> $page
		echo "#                                     #" >> $page
		echo "#######################################" >> $page
		chmod 777 $page
		"${EDITOR:-vi}" $page
	else
		echo "The page $1 already exists!"
fi
