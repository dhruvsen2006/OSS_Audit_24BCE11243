#!/bin/bash

echo "Generate Your Personalized Open Source Manifesto"
echo "############################################"

read -p "1. What does an open source software mean to you? " ans1
read -p "2. What does 'freedom' mean to you? " ans2
read -p "3. Do you have plans for software which you would like to build and share? " ans3

output_file="manifesto_dhruv.txt"

echo "############################################" > $output_file
echo "THE OPEN SOURCE MANIFESTO" >> $output_file
echo "Created by: $(whoami) on $(date)" >> $output_file
echo "############################################" >> $output_file

echo "While others build commercial tools, I choose to build bridges through open source softwares that powers the world's infrastructure." >> $output_file
echo "Open source software such as tool empowers my creativity and helps me turn my ideas into reality." >> $output_file
echo "To me, software freedom is defined by $ans2." >> $output_file
echo "I am planning to build $ans3 to contribute to the community and help others grow." >> $output_file

echo ""
echo "Manifesto successfully saved to $output_file"