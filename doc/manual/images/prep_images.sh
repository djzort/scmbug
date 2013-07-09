#!/bin/sh

# Scale down a file
scale_down()
{
    filename=$1
    percentage=$2

    convert -sample $percentage%x$percentage% $filename $filename.scale_down
    mv $filename.scale_down $filename
}


for file in `ls *.fig |sed -e 's/.fig//'`
do
  fig2dev -L eps $file.fig $file.eps
  fig2dev -L jpeg $file.fig $file.jpg
  fig2dev -L png $file.fig $file.png
done

# for file in `ls *.png`
# do
#   new_file=`echo $file |sed -e 's/png$/jpg/'`
#   convert $file $new_file
# done


#scale_down system_architecture.jpg 75
