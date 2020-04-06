#!/bin/bash

counter=0

while [ $counter -lt 50 ]; do
  counter=$((counter+1))

  name=$(nl people.txt | grep -w $counter | awk '{print $2}')
  lastname=$(nl people.txt | grep -w $counter | awk '{print $3}')
  age=$(shuf -i 20-25 -n 1)

  mysql -u root -pmysql@123 people -e "insert into register values ($counter, '$name', '$lastname', $age)"
  echo "$counter, $name $lastname, $age was correctly imported"

done
