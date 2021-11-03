myuser="$(grep "70: XX XX XX XX XX XX XX" i2c_o.txt)"
if $myuser;
then
    echo "dismatch"
else
    echo "match"
fi
echo "$myuser"
myuser="$(grep "70: XX XX XX XX XX XX XX" tt.txt)"
if $myuser;
then
    echo "dismatch"
else
    echo "match"
fi
echo "$myuser"
