# Formats the current date in the format "April 5th, 2020"
m=$(date +"%B")
d=$(date +"%-d")
y=$(date +"%Y")

#echo $d

if [[ 11 -le $d && $d -le 13 ]]; then
    ret="${m} ${d}th, ${y}"
elif [[ $(($d % 10)) == 1 ]]; then
    ret="${m} ${d}st, ${y}"
elif [[ $(($d % 10)) == 2 ]]; then
    ret="${m} ${d}nd, ${y}"
elif [[ $(($d % 10)) == 3 ]]; then
    ret="${m} ${d}rd, ${y}"
else 
    ret="${m} ${d}th, ${y}"
fi

echo -n "$ret"

