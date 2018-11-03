TOP=`pwd`/..

cd $TOP

rm -fr _pieces
python piece_maker.py images/car.jpg 4 4
cd _pieces/car
montage *.png   # to pieces_outline.png
 convert piece_0_[01].png +append \( piece_1_[01].png +append \) -append result.png
