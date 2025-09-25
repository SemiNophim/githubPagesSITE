#!/bin/bash


# Define arrays for each cargo bay's inventory
forward_bay=("Space Suits" "Oxygen Tanks" "Repair Kits")
midship_bay=("Food Supplies" "Water Containers" "Medical Equipment")
aft_bay=("Spare Parts" "Fuel Cells" "Scientific Instruments")


# Check if an argument is provided
if [ $# -eq 0 ]; then
    echo "Please specify a cargo bay: forward, midship, aft."
    exit 1
fi


# Display inventory based on the argument
if [ "$1" = "forward" ]; then
    for (( i=0; i<${#forward_bay[@]}; i++ )); do
        a=$((i + 1))
        echo "$a. ${forward_bay[i]}"
    done
elif [ "$1" = "midship" ]; then
    for (( i=0; i<${#midship_bay[@]}; i++ )); do
        a=$((i + 1))
        echo "$a. ${midship_bay[i]}"
    done
elif [ "$1" = "aft" ]; then
    for (( i=0; i<${#aft_bay[@]}; i++ )); do
        a=$((i + 1))
        echo "$a. ${aft_bay[i]}"
    done
else
    echo "Invalid cargo bay. Choose forward, midship, or aft."
    exit 1
fi
