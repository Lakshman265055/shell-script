#/usr/bin/bash
myvalue=(1 2 3)
echo "${myvalue[1]}"
myvalue+=(four)

echo "${myvalue[@]}"
echo "no of values is ${#myvalue[@]}"

echo "no of values is ${!myvalue[@]}"

echo "${myvalue[@]:1:2}"



space=()

echo " space ${space[@]}"

echo " space ${space[*]}"

: '
# Step 2: These steps are under development
echo "Configuring environment..."
echo "Installing dependencies..."
'

# Step 3: Run final step
echo "Setup complete!"
