ls
cd learn2prog/
ls
cd learn2prog/
git status
ls
git add .
git commit -m "reuse"
cd 11_read_ptr1/
emacs README 
ls
fg
cd ..
ls
cd c2prj1_cards/
more Makefile 
fg
make
ls
cd ..
cd 11_read_ptr1/
make 
fg
make
ls
fg
make
fg
make
ls
./test 
fg
touch answer.txt
vi answer.txt 
git add .
git commit -m "11"
git push
grade
more grade.txt 
./test 
vi answer.txt 
fg
git add .
git commit -m "fix"
git push
grade
ls
cd learn2prog/12
cd learn2prog/12_read_ptr2/
emacs README 
fg
touch MakeFile
vi MakeFile 
make
ls
fg
more README 
mv MakeFile Makefile
make
./test 
more answer.txt 
vi answer.txt 
git add .
git commit -m "12 finished"
git push
grade
cd learn2prog/13_read_arr1/
ls
emacs README 
make
./test 
fg
./test > answer.txt
git add .
git commit -m "finished13"
git push
grade
ls
cd learn2prog/14
cd learn2prog/14_array_max/
ls
emacs README 
make
fg
make
ls
./arrayMax 
git add .
git commit -m "14"
git push
grade
cd ..
cd 15_tests_subseq/
ls
emacs README 
fg
ls
fg
ls
./run_all.sh 
mv test_subseq.c test-subseq.c 
./run_all.sh 
fg
./run_all.sh 
fg
./run_all.sh 
fg
mv test_subseq.c test-subseq.c 
./run_all.sh 
vi test-subseq.c 
./run_all.sh 
vi test-subseq.c 
./run_all.sh 
vi test
vi test-subseq.c 
./run_all.sh 
vi test-subseq.c 
./run_all.sh 
rm test_subseq.c~ 
ls
vi test-subseq.c
./run_all.sh 
vi test-subseq
vi test-subseq.c
./run_all.sh 
vti test-subseq.c
vi test-subseq.c
./run_all.sh 
vi test-subseq.c
./run_all.sh 
git add .
git push
git commit -m "15"
git push
grade
ls
cd ..
ls
cd 16
cd 16_subseq/
ls
fg\
ls
fg
emacs README 
fg
emacs README 
fg
emacs README 
ls
cd learn2prog/16_subseq/
ls
emacs README 
fg
ls
cd ..
cd 15_tests_subseq/
mv test-subseq.c ../16_subseq/test-subseq.c
cd ../16_subseq/
gcc -o maxSeq.o maxSeq.c 
fg
gcc -o maxSeq.o maxSeq.c 
f
fg
gcc -o maxSeq.o maxSeq.c 
gcc maxSeq.c test-subseq.c -o test
fg
gcc -o test test-subseq.c maxSeq.c
./test 
git add .
git commit -m "16"
git push
grade
ls
git status
cd ..
git add .
git commit -m "15"
git push
cd 16_subseq/
grade
ls
cd learn2prog/17_read_arr2/
emacs README 
man strchr
fg
man strstr
fg
touch Makefile
vi Makefile 
make
./test 
fg
./test > answer.txt
cat answer.txt
git add .
git commit -m "Did 17"
git push
grade
cd ../18_reverse_str/
ls
emacs README 
fg
emacs README 
make
ls
./reverse 
fg
make 
ls
./reverse 
./reverse > answer.txt
diff answer.txt reverse_ans.txt 
git add .
git commit -m "did 18"
git push
grade
fg
vi answer.txt 
ls
more grade.txt 
fg
make
./reverse 
git add .
git commmit -m "fix 18"
git commit -m　
git push
grade
more grade.txt 
ls
fg
git commit -m "fix NULL pointer"
git commit -a -m "fix NULL pointer"
git push
grade
more grade.txt 
fg
ls
git commit -a -m "fix NULL pointer"
git push
grae
grade
more grade.txt 
fg
git commit -a -m "fix NULL pointer"
git push
grade
cd learn2prog/
ls
cd 19_bits_arr/
emacs README 
make
fg
make
ls
./numToBits > answer.txt
diff answer.txt bits_ans.txt 
git add .
git commit -m "Did numToBits"
git push
grade
more grade.txt 
cd ..
ls
cd 20_rot_matrix/
fg
emacs README 
cd learn2prog/20_rot_matrix/
ls
emacs README 
cat sample.txt 
cat sample.out 
fg
make
fg
cat M
ls
fg
gcc -o rotate rotate.c read-matrix.o 
fg
gcc -o rotate rotate.c read-matrix.o 
./rotate sample.txt 
fg
gcc -o rotate rotate.c read-matrix.o 
./rotate sample.txt 
fg
gcc -g rotate.c read-matrix.o 
gdb a.out 
ls
rm rotate a.out 
gcc -c rotate-matrix rotate.c read-matrix.o 
gcc -o rotate-matrix rotate.c read-matrix.o 
./rotate-matrix sample.txt 
fg
gcc -o rotate-matrix rotate.c read-matrix.o 
./rotate-matrix sample.txt 
fg
gcc -o rotate-matrix rotate.c read-matrix.o 
./rotate-matrix sample.txt 
./rotate-matrix sample.txt >answer.txt
diff answer.txt sample.out 
git commit -a -m "Did rot_matrix"
git add .
git commit -a -m "Did rot_matrix"
git push
grade
ls
cd learn2prog/
ls
cd 2
cd 21_read_rec1/
emacs README 
ls
gcc -o test test.c 
./test 
fg
git add .
git commit -m "Did 21"
git push
grade
cd ..
cd 22_tests_power/
ls
emacs README 
fg
emacs README 
more next-README 
fg
ls
./run_all.sh 
fg
./run_all.sh 
fg
./run_all.sh 
fg
./run_all.sh 
fg
./run_all.sh 
fg
./run_all.sh 
fg
./run_all.sh 
fg
vi test-power
vi test-power.
vi test-power.c
./run_all.sh 
fg
./run_all.sh 
git add .
git commit -m "Did 22"
git push
grade
cd ../23_power_rec/
fg
emacs README 
ls
touch Makefile
vi Makefile 
fg
ln -s ../22_tests_power/test-power.c ./
vi Makefile 
make
./test 
ls
git add .
git commit -m "Did 23"
git push
grade
more grade.txt 
fg
git add .
git commit -m "fix 23"
git push
grade
ls
cd ..
ls
cd c3prj1_deck/
ls
fg
emacs README 
cd
ls
cd learn2prog/
ls
cd c3prj1_deck/
vi deck.c
make
ls
./test-deck 
git add .
git commit -m "Did c3prj1_deck
"
git push
grade
cd ..
ls
cd c3prj_eval
cd c3prj2_eval/
ls
vi README 
ls
cd learn2prog/c3prj2_eval/
ls
vi eval.c
ls
make
vi eval.c
make
ls
./test-eval 
./test-eval tests.txt 
more tests.txt 
ls
touch test.txt
vi test.txt 
./test-eval test.txt 
vi eval.c
make
./test-eval test.txt 
ls
vi eval.c
gd
gdb
ls
gdb test-eval
vi eval.c
make
./test-eval test.txt 
vi eval.c
make
./test-eval test.c
./test-eval test.txt 
vi eval.c
make
./test-eval test.txt 
vi eval.c
make
ls
gdb test-eval
vi eval.c
make
./test-eval test.txt 
vi eval.c
make
vi eval.c
make
./test-eval test.txt 
gdb test-eval
vi eval.c
make
./test-eval test.txt 
vi test.txt
gdb
gdb test-eval
./test-eval test.txt 
gdb test-eval
vi eval.c
make
./test-eval test.txt 
git add .
git commit -m "Did c3p2"
git push
grade
more grade.txt 
cd ..
ls
cd c2prj1_cards/
ls
cd cards.c
vi cards.c
cd ..
cd c3prj2_eval/
ls
vi eval.c
cd ..
cd c3prj1_deck/
ls
vi deck.c
cd ..
cd c3prj1_deck/
cd ../c2prj1_cards/
ls
vi cards.c
cd ..
cd c3prj2_eval/
./test-eval test.txt 
vi eval.c
cd ../c3prj1_deck/
vi deck.c
cd ../c2prj1_cards/
vi cards.c
cd ../c3prj2_eval/
./test-eval test.txt
make
./test-eval test.txt 
git add .
git commit -m"Did cep2"
cd ..
git add .
cd c3prj2_eval/
git commit -m "fix"
git push
grade
more grade.txt 
cd ../c2prj1_cards/
vi README 
cd ../c3prj1_deck/
vi README 
vi deck.c
cd ..
cd c2prj1_cards/
vi cards.c
cd ../c3prj2_eval/
make
./test-eval test.txt 
git add .
git commit -m "fix print"
cd ..
git add .
cd c3prj2
cd c3prj2_eval/
git commit -m "fix c3p2"
git push
grade
more grade.txt 
vi grade.txt 
cd ..
ks
cd c3prj1_deck/
vi deck.c
git add .
cd ../c3prj2_eval/
ls
git add .
make
git add .
git commit -m "fix print"
git push
grade
more grade.txt 
ls
vi test.txt 
more grade.txt 
make
more grade.txt 
vi eval.c
cd ..
cd c3prj1_deck/
vi deck.c
cd ..
git add .
cd c3prj2_eval/
git commit -m "fix tie"
git push
grade
make
vi eval.c
make
git add .
git commit -m "fix c3pw"
git push
grade
more grade.txt 
vi test.txt 
./test-eval test.txt 
more grade.txt 
./test-eval test.txt 
vi eval.c
make
./test-eval test.txt 
git add .
git commit -m "fix tie"
git push
grade
more grade.txt 
vi eval.c
make
git add .
gti commit -m "fix flush straight"
git commit -m "fix flush straight"
git push
ls
grade
more grade.txt 
vi grade.txt 
vi test.txt
./test-eval test.txt 
vi eval.c
gdb
gdb test-eval
vi test.txt
make
./test-eval test.txt
gdb test-eval
vi eval.c
make
./test-eval test.txt 
gdb test-eval
vi eval.c
make
./test-eval test.txt 
git add .
git commit -m "fix straight"
git push
grade
more grade.txt 
vi test.txt 
./test-eval test.txt 
vi eval.c
make
./test-eval test.txt 
vi eval.c
ls
make
./test-eval test.txt 
vi eval.c
make
vi eval.c
make
vi eval.c
make
./test-eval test.txt 
vi eval.c
make
./test-eval test.txt 
ls
git add .
git commit -m "fix straight flush"
git push
grade
ls
cd learn2prog/
ls
cd ..
cd learn2prog/
ls
git add ,
git add .
git commit -m "Initial course 4"
git push
ls
cd 24_read_arr3/
ls
emacs README 
gcc -c test test.c
gcc -o test test.c
ls
./test 
fg
./test > answer.txt
fg
git add .
git commit -m "Did 24"
git push
grade
cd learn2prog/25_break_encr/
emacs README 
cd learn2prog/25_break_encr/
emacs README
fg
ls
fg
ls
fg
vi Makefile
make
fg
make
fg
make
fg
make
ls
git add .
git commit -m "Did 25"
git push
grade
more grade.txt 
fg
git add .
git commit -m "fix 25"
git push
grade
more grade.txt 
vi input.txt
./breaker input.txt 
fg
make
fg
make
./breaker input.txt 
vi input.txt 
f
fg
vi input.txt 
./breaker input.txt 
make
fg
git add .
git commit -m "fix 25"
git push
grade
more grade.txt 
ls
vi Makefile 
make
gdb breaker
fg
gdb breaker
fg
cd learn2prog/25_break_encr/
ls
emacs breaker.c
make
vi Makefile 
make
fg
make
fg
make
git add .
git push
git commit -m "initial character"
git push
grade
more grade.txt 
fg
cd learn2prog/25_break_encr/
vi breaker.c
make
./breaker input.txt 
git add .
git push
git commit -m "fix getKey"
git push
grade
more grade.txt 
vi breaker
vi breaker.c
make
git add .
git commit -m "add upcase"
git push
grade
more grade.txt 
vi breaker.c
make
git add .
git commit -m "fix getKey"
git push
grade
ls
cd ..
cd 26
cd 26_tests_matrix_input/
ls
vi README 
git status
git pull
vi README 
ls
cd learn2prog/
cd 26_tests_matrix_input/
ls
cat 0.txt 
./run_all.sh
sudo su
su
vi 1.txt
git add .
git commit -m "fix 1"
git push
grade
more grade.txt 
cat 1.txt 
vi tests.txt 
git add .
git commit -m  "1"
git push
grade
more 1.txt 
bash run_all.sh
ls
vi tests.txt 
cd ..
rm 26_tests_matrix_input/
rm -r 26_tests_matrix_input/
git pull
ls
cd 25_break_encr/
grade
cd ..
ls
cd 26_tests_matrix_input/
ls
git add .
git commit -m "1"
git push
grade
more grade.txt 
vim 0.txt
vi tests.txt 
bash run_all.sh
git add .
git commit -m "fix 1"
git push
grade
more grade.txt 
bash run_all.sh
ls
vi tests.txt 
cat result 
ls
cd ..
git status
cd 26_tests_matrix_input/
git add .
git commit -m "test"
git push
grade
more grade.txt 
vi 1.txxt
vim 1.txt
vim -b 1.txt 
ls
bash run_all.sh 
vi tests.txt 
git add .
git commt -m "test 1"
git push
grade
git add .
git commit -m "add 1"
git push
grade
more grade.txt 
ls
cd 26
cd learn2prog/26_tests_matrix_input/
ls
fastforward
fast-forward 27_matrix_input
cd ..
ls
cd 26_tests_matrix_input/
ls
vi col_greater_than_10.txt 
chmod +x run_all.sh
ls -l
./run_all.sh 
vi run_all.sh 
ls
./run_all.sh 4
vi run_all.sh 
./run_all.sh 
bash run_all.sh
vi run_all.sh 
cd ..
ls
cd 22_tests_power/
ls
vi run_all.sh 
cd ..
ls
cd 26_tests_matrix_input/
vi run_all.sh 
./run_all.sh 
rm -r rot_matrix/
ls
rm grade.txt 
rm result 
git add .
git commit -m "fix"
git push
git pull
ls
cd ..
ls
cd 26_tests_matrix_input/
ls
git status
git push
grade
more grade.txt 
cd learn2prog/26_tests_matrix_input/
ld
ls
./run_all.sh 
vi tests.txt 
cd learn2prog/26_tests_matrix_input/
ls
dos2unix ./run_all.sh
sed -i 's/\r$//' ./run_all.sh
./run_all.sh 
vi tests.txt 
vi sample.txt 
more next-README 
vi 0.txt
vi tests.txt 
vi 2.txt
./run_all.sh 
ls
vi 3.txt
vi tests.txt 
./run_all.sh 
ls
rm grade.txt 
vi tests.txt 
./run_all.sh 
vi tests.txt 
./run_all.sh 
vi tests.txt 
./run_all.sh 
cd learn2prog/26_tests_matrix_input/
ls
vi tests.txt 
./run_all.sh 
vi tests.txt 
./run_all.sh 
vi tests.txt 
./run_all.sh 
vi tests.txt 
./run_all.sh 
vi tests.txt 
vi 3.txt 
vi tests.txt 
./run_all.sh 
vi 4.txt
vi sample.txt 
./run_all.sh 
git add .
git commit -m "test"
git push
grade
more grade.txt 
vi tests.txt 
vi 4.txt 
vi 3.txt 
vi 2.txt 
vi col_greater_than_10.txt 
vi row_greater_than_10.txt 
vi col_lower_than_10.txt 
vi row_lower_than_10.txt 
./run_all.sh 
ls
vi tests.txt 
./run_all.sh 
vi tests.txt 
./run_all.sh 
vi tests.txt 
./r
./run_all.sh 
cd ..
cd 26_tests_matrix_input/
vi tests.txt 
./run_all.sh 
vi tests.txt 
./run_all.sh 
vi tests.txt 
./run_all.sh 
vi tests.txt 
./run_all.sh 
vi 4.txt 
vi 5.txt
vi 4.txt 
vi tests.txt 
./run_all.sh 
vi sample.txt 
vi 5.txt
vi tests.txt 
./run_all.sh 
vi tests.txt 
vi 5.txt 
vi 4.txt 
vi 3.txt 
cd learn2prog/26_tests_matrix_input/
vi tests.txt 
./run_all.sh 
vi tests.txt 
./run_all.sh 
vi tests.txt 
ls
vi tests.txt 
./run_all.sh 
vi tests.txt 
ls
chmod +x run_all.sh 
./run_all.sh 
sed -i 's/\r$//' ./run_all.sh
./run_all.sh 
git add .
git status
cd ..
git add .
cd 26_tests_matrix_input/
git commit -m"26"
git push
grade
more tests.txt 
more grade.txt 
vi tests.txt 
./run_all.sh 
ls
vi run_all.sh 
git add .
git commit -m "w"
git push
grade
more grade.txt 
vi tests.txt 
./run_all.sh 
cd ..
git status
cd 26_tests_matrix_input/
vi tests.txt 
./run_all.sh 
cd ..
cd 26_tests_matrix_input/
ls
vi tests.txt 
chmod +x run_all.sh
./run_all.sh 
vi tests.txt 
./run_all.sh 
vi 5.txt 
vi 6.txt
vi tests.txt 
vi 7.txt
./run_all.sh 
vi tests.txt 
vi tests.t
vi 7.txt 
./run_all.sh 
vi 4.txt 
vi 7.txt
./run_all.sh 
vi tests.txt 
ls
vi tests.txt 
./run_all.sh 
reset
vi 0.txt
reset 26_tests_martix_input
ls
cd ..
reset
reset 26_tests_matrix_input/
cd 26_tests_matrix_input/
ls
./run_all.sh 
git add .
git commit -m "reset"
cd ..
reset 26_tests_matrix_input/
cd 26_tests_matrix_input/
ls
vi tests.txt
./run_all.sh 
vi 0.txt
vi tests.txt 
./run_all.sh 
cp 0.txt 1.txt
vi 1.txt 
cp 0.txt 2.txt
vi 2.txt 
vi tests.txt 
./run_all.sh 
cp 0.txt 3.txt
vi 3.txt 
cp 0.txt 4.txt
vi 4.txt 
vi tests.txt 
./run_all.sh 
vi EOF.txt
vi tests.txt 
./run_all.sh 
vi EOF.txt 
./run_all.sh 
vi E.txt
vi -b E.txt
vi tests.txt 
./run_all.sh 
git add 
git add .
git commit -m "Did 26"
git push
grade
cd ..
cd 27_matrix_input/
ls
more README 
cd ..
ls
cd 20_rot_matrix/
ls
mv rotate.c ../27_matrix_input/rotate.c
cd ../27_matrix_input/
ls
vi rotateMartix.c
gcc -o rotate rotate.c
rm rotate.c
gcc -o rotateMartix rotateMartix.c 
ls
./rotateMartix sample.txt 
more sample.out 
git add .
git commit -m "init 27"
git push
grade
cd ..
cd 20_rot_matrix/
ls
mv rotate.c~ rotate.c
cd ..
git add .
cd 27_matrix_input/
cd ..
git commit -m "1"
cd 27_matrix_input/
ls
git push
grade
more grade.txt 
ls
mv rotateMartix.c rotateMatrix.c
ls
git add .
git commit -m "fix name"
git push
grade
more grade.txt 
vi rotateMatrix.c 
git add .
git commit -m "fix long file"
git push
grade
ls
cd ..
ls
cd learn2prog/
ls
cd 28
cd 28_fix_vg_encr/
more README 
ls
valgrind encrypt.c 
make
valgring encrypt
valgrinding ./encrypt
valgrind ./encrypt
vi encrypt.c
valgrind ./encrypt --leak-check=full 
make
valgrind ./encrypt --leak-check=full 
ls
./encrypt input.txt 
vi encrypt.c
./encrypt 7 input.txt 
vi encrypt.c
make
./encrypt 7 input.txt
valgrind ./encrypt
valgrind ./encrypt 7 input.txt
vi encrypt.c
make
valgrind ./encrypt 7 input.txt
valgrind --track-origins=yes  ./encrypt 7 input.txt
vi encrypt.c
make
vi encrypt.c
make
valgrind --track-origins=yes  ./encrypt 7 input.txt
./encrypt  7 input.txt
ls
cat input.txt.enc 
git add .
git commit -m "init 28"
git push
grade
cd ../29_outname/
ls
more README 
ls
vi outname.c
cd ../28_fix_vg_encr/
ls
vi encrypt.c
cd ../29_outname/
vi outname.c
make
vi outname.c
mak
make
vi outname.c
make
vi outname.c
make
ls
./outname_test README 
ls
vi outname.c
make
./outname_test 
vi README 
vi outname.c
make
./outname_test 
git add .
git commit -m "init 29"
git push
grade
cd 30
cd ..
ls
cd 30_sort_lines/
ls
vi README 
ls
cd learn2prog/30_sort_lines/
ls
vi README 
vi sortLines.c 
emacs README 
cd learn2prog/30_sort_lines/
ls
vi sortLines.c 
vi '#sortLines.c#' 
cp '#sortLines.c#' sortLines.c 
vi sortLines.c 
make
vi sortLines.c 
make
ls
./test.sh 
rm '#sortLines.c#' 
valgrind ./sortLines
vi input.txt
valgrind ./sortLines--leak-check=full
valgrind --leak-check=full ./sortLines
vi sortLines.c
make
./test.sh 
vi sortLines
vi sortLines.c
make
./test.sh 
valgrind ./sortLines
valgrind ./sortLines input.txt
vi sortLines.c
make
vi sortLines.c
make
./test.sh 
valgrind ./sortLines
valgrind ./sortLines input.txt
vi sortLines.c
make
vi sortLines.c
make
./test.sh 
valgind ./sortLines input.txt
valgrind ./sortLines input.txt
vi s
vi sortLines.c
make
./test.sh 
valgrind ./sortLines
valgrind ./sortLines input.txt
vi sortLines.c
cd learn2prog/30_sort_lines/
ls
vi sortLines.c
valgrind ./sortLines input.txt
vi sortLines.c
make
valgrind ./sortLines input.txt
vi sortLines.c
make
valgrind ./sortLines input.txt
./test.sh 
./sortLines input.txt 
vi input.txt 
make
./sortLines input.txt 
vi README 
vi sortLines.c
make
git add .
git commit -m "init 30"
git push
grade
cd ../31_minesweeper/
vi README 
ls
vim
vim minesweeper.c 
cd learn2prog/31_minesweeper/
ls
vi minesweeper.c 
make
ls
./minesweeper 
./minesweeper 10 10 10
valgrind ./minesweeper 10 10 10
vi minesweeper.c
cd ..
ls
cd 31_minesweeper/
ls
vi minesweeper
vi minesweeper.c
vi minesweeper
vi minesweeper.c
make
vi minesweeper.c
make
valgrind ./minesweeper 10 10 10
vi minesweeper.c
make
valgrind ./minesweeper 10 10 10
vi minesweeper.c
make
valgrind ./minesweeper 10 10 10
git add .
git commit -m "init 31"
git push
grade
cd ..
git add .
git commit -m "init 31"
cd 31_minesweeper/
git push
grade
cd learn2prog/
ls
cd 32_kvs/
ls
vi README 
cd learn2prog/
cd 32_kvs/
ls
vi kv.c
cd ..
ls
cd 32_kvs/
vi kv.c
cd ../..
cd 32
cd learn2prog/32_kvs/
vi kv.c
make
vi kv.h
make
ls
./kv_test 
valgrind ./kv_test
vi kv.c
make
./kv_test 
valgrind ./kv_test
valgrind ./kv_test --leak-check=full
vi kv.c
make
vi kv.c
make
./kv_test 
valgrind ./kv_test --leak-check=full
vi kv.c
valgrind ./kv_test --lea
vi kv.c
mak
make
vi kv.c
make
vi kv.c
make
gdb ./kv_test
vi kv.c
make
./kv_test 
git add .
git commit -m "did 32"
git push
grade
cd learn2prog/33_counts/
vi README 
cd learn2prog/33_counts/
vi README 
git status
cd learn2prog/
git status
cd 33_counts/
vi README 
emacs README 
cd learn2prog/33_counts/
ls
vi counts.c
vi counts.h
vi counts.c
make
ls
./counts_test 
rm counts.h~
ls
git add .
git commit -m "init 33"
git push
grad
grade
more grade.txt 
valgrind ./counts_test
vi counts.c
make
vi counts.c
make
./counts_test 
valgrind ./counts_test
git add .
git commit -m "fix countinitialize"
git push
grade
cd ../34_put_together/
vi README 
cd learn2prog/34_put_together/
emacs README 
ls
vi kv.c
cd learn2prog/34_put_together/
ls
rm '#main.c#' 
vi outname.c
vi kv.c
vi kvs1.txt 
vi main.c 
vi kv.c
vi main.c 
vi kv.c
vi main.c 
vi kv.c
vi main.c 
vi outname.
vi outname.c
vi main.c 
vi counts.c
vi main.c 
vi counts.c
cd learn2prog/34_put_together/
vi kv.c
vi main.c 
make
i main.c 
vi main.c 
make
la
./count_values kvs1.txt list1a.txt list1b.txt
valgrind ./count_values kvs1.txt list1a.txt list1b.txt
vi main.
vi main.c
make
valgrind ./count_values kvs1.txt list1a.txt list1b.txt
./count_values kvs1.txt list1a.txt list1b.txt
ls
vi list1a.txt.
diff list1a.txt.counts list1a.txt.ans 
git add .
git commit -m "init 34"
git push
grade
more grade.txt 
cd learn2prog/
ls
cd c4prj1_deck/
ls
vi README 
cd learn2prog/c4prj1_deck/
ls
vi README 
cd learn2prog/
ls
rm home-archive/
rm -r home-archive/
cd home-archive/
ls
rm -r learn2prog/
cd learn2prog/
ls
cd 31_minesweeper/
ls
cd ..
rm 31_minesweeper/ -r
cd ..
ls
cd ..
cd learn2prog/
cd c4prj1_deck/
ls
vi eval.c
vi deck.c
git add .
git commit -m "Init c4p1"
cd ..
git add .
cd c4prj1_deck/
git commit -m "init c4p1"
git push
grade
more grade.txt 
vi deck.c
git add .
git commit -m "fix add empty card"
cd ..
git add .
cd c4prj1_deck/
git commit -m "fix add empty card"
git push
grade
cd ../c4prj2_input/
ls
vi README 
cd ..
cd ~
ls
rm home-archive/
rm home-archive/ -r
cd home-archive/learn2prog/31_minesweeper/
ls -l
cd ..
cd learn2prog/ls
cd learn2prog/c4prj2_input/
vi README 
cd learn2prog/c4prj2_input/
vi future.c
cd learn2prog/c4prj2_input/
vi input.c
vi future.c
ls
git add .
git commit -m "init c4p2"
git push
grade
more grade.txt 
vi future.c
git add .
git commit -m "fix future.c"
git push
grade
more grade.txt 
vi input.c
vi future.c
git add .
git commit -m "fix future cards"
git push
grade
more grade.txt 
vi future.c
git add .
git commit -m "fix f"
git puhs
git push
grade
more grade.txt 
vi future.c
git add .
git commit -m "n"
git push
grade
more grade.txt 
vi future.c
git add .
git commit -m "fix add f"
git push
grade
more grade.txt 
vi future.c
git add .
git commit -m "fix many unkonw card"
git push
grade
more grade.txt 
vi future.c
git add .
git commit -m "fix "
git push
grade
more grade.txt 
vi input.c
git add .
git commit -m "fix input"
git push
grade
more grade.txt 
vi input.
ls
rm input.
vi input.c
git add .
git commit -m "fix input"
git push
grade
more grade.txt 
vi input.
vi input.c
git add .
git commit -m "f"
git push
grade
more grade.txt 
vi input.c
git add .
git commit -m "f"
git push
grade
more grade.txt 
vi input.c
vi future.c
git add .
git commit -m "fix"
git push
grade
more grade.txt 
vi input.c
git add .
git commit -m "test"
git push
grade
vi input.d
vi input.c
git add .
git commit -m "test1"
git push
grade
more grade.txt 
vi input.t
vi input.c
git add .
git commit -m "test1"
git push
grade
more grade.txt 
vi input.c
cd ..
ls
git add .
cd c4prj3_finish/
vi README 
cd learn2prog/
cd learn2prog/c4prj3_finish/
vi main.c 
ls
make
vi main.c 
make
vi provided-tests/
./poker provided-tests
cd provided-tests/
ls
vi answers.txt 
cd ..
valgrind ./poker provided-tests/test01.txt 
vi main.
vi main.c
make
valgrind ./poker provided-tests/test01.txt 
vi main.c
make
./poker provided-tests/test01.txt 
valgrind 
valgrind ./poker provided-tests/test01.txt 
vi main.c
make
valgrind ./poker provided-tests/test01.txt 
./poker provided-tests/test01.txt >01.txt
diff 01.txt provided-tests/answers.txt 
git add .
git commit -m "finish"
git push
grade
more grade.txt 
ls
rm vgcore.2479 
cd provided-tests/
ls
vi answers.txt 
cd ..
./poker provided-tests/test14.txt 
./poker provided-tests/test16.txt 
./poker provided-tests/test15.txt 
vi main.c
make
vi main.c
make
./poker provided-tests/test16.txt 
./poker provided-tests/test15.txt 
cat provided-tests/answers.txt 
cd provided-tests/tes
cd provided-tests/
cat test16.txt 
cd ..
vi main.c
make
./poker provided-tests/test16.txt 
git add .
vi main.c
make
./poker provided-tests/test16.txt 
vi main.c
gdb ./poker 
vi main.
vi main.c
make
./poker provided-tests/test16.txt 
vi main.c
make
./poker provided-tests/test16.txt 
vi main.c
gdb ./poker 
vi main.c
make
./poker provided-tests/test16.txt 
git add .
git commit -m "finish"
git push
grade
vi main.c
make
git add .
git commit -m "test"
git push
grade
more grade.txt 
vi main.c
make
make clean
make OTHERFLAGS=-O3
./poker provided-tests/test16.txt 
git add .
git commit -m "test"
git push
grade
more grade.txt 
ls
git pull
cd ..
ls
cd c4prj3_finish/
cd ..
cd c3prj2_eval/
vi eval.c
cd ..
cd c4prj3_finish/
./poker provided-tests/test16.txt 
make
./poker provided-tests/test16.txt 
git add .
git commit -m "fix eval.c"
cd ..
git add .
cd c4prj3_finish/
ls
git commit -m "fix eval.c"
git push
grade
cd ..
ls
cd and_beyond/
ls
vi README 
cd learn2prog/c4prj3_finish/
ls
vi main.c
make
./poker provided-tests/test16.txt 
cd ../..
ls
rm home-archive/ -r
ls
cd ..
ls
cd student-ro
ls
cd ..
cd student
cd ../..
ls
cat git-remote
cd git-remote
ls
cd learn2prog/
ls
cat description 
cd ..
ls
