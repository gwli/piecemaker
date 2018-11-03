TOP=`pwd`/..

cd $TOP

rm -fr _pieces
python piece_maker.py ~/momo.jpg 3 3
cd _pieces/momo
#montage *.png   # to pieces_outline.png
convert piece_0_[012].png +append \( piece_1_[012].png +append \)  \( piece_2_[012].png +append \) -append result.png
