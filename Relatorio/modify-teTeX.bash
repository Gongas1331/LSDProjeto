#! /bin/bash
#
# NOT TESTED for some time; use at your own risk
#

# Put here the actual path of the base of the TeX distribution tree
teTeX=/usr/share/texmf
if [ ! -d $teTeX ]; then
  echo "The teTeX variable may be wrong or teTeX may not be instaled"
  exit 1
fi

echo " "
echo Searching for files with wrong names
for f in `find $teTeX -name "*[Pp]ortuges*" -print`; do
  g=`echo $f | sed -e s/portuges/portugues/g -e s/Portuges/Portugues/g`
  echo " "
  echo "  renaming" $f
  echo "        to" $g
  mv -f $f $g
end

echo " "
echo Searching for files with wrong contents
g=/tmp/mod.$$
rm -f $g
for f in `find $teTeX -type f -exec grep -l "[Pp]ortuges" {} \;`; do
  h=`file $f`
  if [[ $f == *.dvi ]]; then
    echo "  skipping" $f "(dvi)"
  elif [[ $f == *.fmt ]]; then
    echo "  skipping" $f "(fmt)"
  elif [[ $h == *ELF* ]]; then
    echo "  skipping" $f "(executable)"
  else
    echo "  modifying" $f
    sed -e s/portuges/portugues/g -e s/Portuges/Portugues/g <$f >$g
    mv -f $g $f
    chmod a+r $f
    chmod go-w $f
  fi
done

echo " "
echo Done
