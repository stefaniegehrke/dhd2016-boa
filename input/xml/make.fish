#!/usr/bin/env fish

set stylesheet $HOME/roman/dhd2016-styles/html/html.xsl
set saxon $HOME/roman/TEI/P5/Utilities/lib/saxon9he.jar

set dest burr@dhd2016.de:www/dhd2016.de/abstracts/

echo -n "processing"
for file in $argv
  echo -n " $file"
  java -jar $saxon -xsl:$stylesheet -s:$file > (basename -s.xml $file).html
end
echo

echo uploading files
scp -q $argv *.html $dest
echo deleting html files
rm *.html
echo done.
