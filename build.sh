export target=$1
# echo $target

export tempFile="./tmp/newfile.oz"

echo "" > $tempFile
# echo "functor import System Application define" > $tempFile
cat $target >> $tempFile
# cp /tmp/newfile yourfile
printf "\n" >> $tempFile
# printf "{Application.exit 0}\n" >> $tempFile
# printf "end\n" >> $tempFile

printf "\033[42m\033[30mbuilding %-6s\033[0m\n\n" $1;
# echo $tempFile
# echo $tempFile"f"
rm -rf $tempFile"f"
ozc -c $tempFile -o $tempFile"f"; ozengine $tempFile"f"
