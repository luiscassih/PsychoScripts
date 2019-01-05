# Get and join segments #inline
for i in {1..777}; do curl https://awebsite.ext/key=examplekey/1234.mp4/seg-$i_otherCharacters.ext >> allSegments.ext; done;

# Generate a list of all links
for i in {1..777}; do 
    preURL="https://awebsite.ext/v/afolder/segment123"
    endURL="_otherCharacters.ext?sd=6&set-segment-duration=quality&othersParameters"
    printf "$preURL$i$endURL\n" >> links.txt
done;

# Joining segments to a final file
for i in {1..777}; do 
    echo "Seq $i"
    cat segment123"$i"_otherCharacters.ext >> allSegments.ext
done;