# check for remainders of figure links
echo "Figure and table links"
grep "fig:" lsj/*.rst
grep "tab:" lsj/*.rst
echo -e "\n\n\n"

# check whether section and chapter references are left over
echo "Sections and chapter references"
grep "ch:" lsj/*.rst
grep "sec:" lsj/*.rst
echo -e "\n\n\n"

# check inline math
echo "Inline math"
grep ":math:" lsj/*.rst
echo -e "\n\n\n"

# check footnotes
echo "Footnotes"
grep "\[1\]" lsj/*.rst
grep "\[#\]" lsj/*.rst | grep -v "\\\\ \[#" | grep -v ":\.\." | cut -d: -f1 | sort | uniq | tr '\n' ' '
# echo -e "\n\n\n"
