read -p "Unesite naziv fajla i duzinu teksta: " fileName textLength

echo "Text length: $textLength"


pageContent=$(curl -s "https://en.wikipedia.org/wiki/$fileName")
echo "Fetched content length: ${#pageContent}"


plainText=$(echo "$pageContent" | html2text -width "$textLength")
echo "Plain text length: ${#plainText}"


echo "$plainText" | head -c "$textLength" > "${fileName}.txt"


cat "${fileName}.txt"

