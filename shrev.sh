if [[ $# -eq 0 ]]; then
	echo "ERROR! Syntax violated"
	echo "hint:: bash $0 (number)"
else
	new=0
	num=$1
	while [[ $num -ne 0 ]]; do
		rem=$(( $num%10 ))
		new=$(( ($new+$rem)*10 ))
		num=$(( $num/10 ))
	done
	new=$(( $new/10 ))
	echo "the reversed number is $new"
fi
