# data-science-command-line

# Command list

#alias
Define or display aliases. Alias is a Bash builtin.
165
$ help alias
$ alias ll='ls -alF'
awk
Pattern scanning and text processing language. Mawk (version 1.3.3) by Mike
Brennan (1994). http://invisible-island.net/mawk.
$ sudo apt-get install mawk
$ man awk
$ seq 5 | awk '{sum+=$1} END {print sum}'
15
#aws
Manage AWS Services such as EC2 and S3 from the command line. AWS Command
Line Interface (version 1.3.24) by Amazon Web Services (2014). http://
aws.amazon.com/cli.
$ sudo pip install awscli
$ aws help
$ aws ec2 describe-regions | head -n 5
{
 "Regions": [
 {
 "Endpoint": "ec2.eu-west-1.amazonaws.com",
 "RegionName": "eu-west-1"
#bash
GNU Bourne-Again SHell. Bash (version 4.3) by Brian Fox and Chet Ramey (2010).
http://www.gnu.org/software/bash.
$ sudo apt-get install bash
$ man bash
#bc
Evaluate equation from standard input. Bc (version 1.06.95) by Philip A. Nelson
(2006). http://www.gnu.org/software/bc.
$ sudo apt-get install bc
$ man bc
$ echo 'e(1)' | bc -l
2.71828182845904523536
166 | Appendix A: List of Command-Line Tools
#bigmler
Access BigML’s prediction API. BigMLer (version 1.12.2) by BigML (2014). http://
bigmler.readthedocs.org.
$ sudo pip install bigmler
$ bigmler --help
#body
Apply an expression to all but the first line.
$ echo -e "value\n7\n2\n5\n3" | body sort -n
value
2
3
5
7
cat
Concatenate files and standard input, and print on standard output. Cat (version
8.21) by Torbjorn Granlund and Richard M. Stallman (2012). http://www.gnu.org/soft
ware/coreutils.
$ sudo apt-get install coreutils
$ man cat
$ cat results-01 results-02 results-03 > results-all
#cd
Change the shell working directory. Cd is a Bash builtin.
$ help cd
$ cd ~; pwd; cd ..; pwd
/home/vagrant
/home
#chmod
Change file mode bits. We use it to make our command-line tools executable. Chmod
(version 8.21) by David MacKenzie and Jim Meyering (2012). http://www.gnu.org/soft
ware/coreutils.
$ sudo apt-get install coreutils
$ man chmod
$ chmod u+x experiment.sh
#cols
Apply a command to a subset of the columns and merge the result back with the
remaining columns. 
$ < iris.csv cols -C species body tapkee --method pca | header -r x,y,species
#cowsay
Generate an ASCII picture of a cow with a message. Useful for when building up a
particular pipeline is starting to frustrate you a bit too much. Cowsay (version
3.03+dfsg1) by Tony Monroe (1999).
$ sudo apt-get install cowsay
$ man cowsay
$ echo 'The command line is awesome!' | cowsay
#cp
Copy files and directories. Cp (version 8.21) by Torbjorn Granlund, David
MacKenzie, and Jim Meyering (2012). http://www.gnu.org/software/coreutils.
$ sudo apt-get install coreutils
$ man cp
#csvcut
Extract columns from CSV data. Like cut command-line tool, but for tabular data.
#Csvkit (version 0.8.0) by Christopher Groskopf (2014). http://csvkit.readthedocs.org.
$ sudo pip install csvkit
$ csvcut --help
168 | Appendix A: List of Command-Line Tools
#csvgrep
Filter tabular data to only those rows where certain columns contain a given value or
match a regular expression. Csvkit (version 0.8.0) by Christopher Groskopf (2014).
http://csvkit.readthedocs.org.
$ sudo pip install csvkit
$ csvgrep --help

#csvjoin
Merge two or more CSV tables together using a method analogous to a SQL JOIN
operation. Csvkit (version 0.8.0) by Christopher Groskopf (2014). http://csvkit.read
thedocs.org.
$ sudo pip install csvkit
$ csvjoin --help

#csvlook
Renders a CSV file to the command line in a readable, fixed-width format. Csvkit
(version 0.8.0) by Christopher Groskopf (2014). http://csvkit.readthedocs.org.
$ sudo pip install csvkit
$ csvlook --help
$ echo -e "a,b\n1,2\n3,4" | csvlook
#csvsort
Sort CSV files. Like the sort command-line tool, but for tabular data. Csvkit (version
0.8.0) by Christopher Groskopf (2014). http://csvkit.readthedocs.org.
$ sudo pip install csvkit
$ csvsort --help
#csvsql
Execute SQL queries directly on CSV data or insert CSV into a database. Csvkit (ver‐
sion 0.8.0) by Christopher Groskopf (2014). http://csvkit.readthedocs.org.
$ sudo pip install csvkit
$ csvsql --help
#csvstack
Stack up the rows from multiple CSV files, optionally adding a grouping value to
each row. Csvkit (version 0.8.0) by Christopher Groskopf (2014). http://csvkit.readthe
docs.org.
$ sudo pip install csvkit
$ csvstack --help
#csvstat
Print descriptive statistics for all columns in a CSV file. Csvkit (version 0.8.0) by
Christopher Groskopf (2014). http://csvkit.readthedocs.org.
$ sudo pip install csvkit
$ csvstat --help
#curl
Download data from a URL. cURL (version 7.35.0) by Daniel Stenberg (2012). http://
curl.haxx.se.
$ sudo apt-get install curl
$ man curl
#curlicue
Perform OAuth dance for curl. Curlicue by Decklin Foster (2014). https://
github.com/decklin/curlicue.
$ git clone https://github.com/decklin/curlicue.git
#cut
Remove sections from each line of files. Cut (version 8.21) by David M. Ihnat, David
MacKenzie, and Jim Meyering (2012). http://www.gnu.org/software/coreutils.
$ sudo apt-get install coreutils
$ man cut
#display
Display an image or image sequence on any X server. Can read image data from stan‐
dard input. Display (version 8:6.7.7.10) by ImageMagick Studio LLC (2009). http://
www.imagemagick.org.
$ sudo apt-get install imagemagick
$ man display
170 | Appendix A: List of Command-Line Tools
#drake
Manage a data workflow. Drake (version 0.1.6) by Factual (2014). https://github.com/
Factual/drake.
$ # Please see Chapter 6 for installation instructions.
$ drake --help
#dseq
Generate sequence of dates relative to today.
$ dseq -2 0 # day before yesterday till today
2014-07-15
2014-07-16
2014-07-17
#echo
Display a line of text. Echo (version 8.21) by Brian Fox and Chet Ramey (2012).
http://www.gnu.org/software/coreutils.
$ sudo apt-get install coreutils
$ man echo
#env
Run a program in a modified environment. It’s often used to specify which interpreter
should run our script. Env (version 8.21) by Richard Mlynarik and David MacKenzie
(2012). http://www.gnu.org/software/coreutils.
$ sudo apt-get install coreutils
$ man env
$ #!/usr/bin/env python
#export
Set export attribute for shell variables. Useful for making shell variables available to
other command-line tools. Export is a Bash builtin.
$ help export
$ export WEKAPATH=$HOME/bin
#feedgnuplot
Generate a script for gnuplot while passing data to standard input. Feedgnuplot (ver‐
sion 1.32) by Dima Kogan (2014). http://search.cpan.org/perldoc?feedgnuplot.
$ sudo apt-get install feedgnuplot
$ man feedgnuplot
#fieldsplit
Splits a file into multiple files according to a particular field value. Fieldsplit (version
2010-01) by Jeremy Hinds, Jason Gessner, Jim Renwick, Norman Gocke, Rodofo
Granata, and Tobias Wolff (2010). http://code.google.com/p/crush-tools.
$ # See website for installation instructions
$ fieldsplit --help

#find
Search for files in a directory hierarchy. Find (version 4.4.2) by James Youngman
(2008). http://www.gnu.org/software/findutils.
$ sudo apt-get install findutils
$ man find

#for
Execute commands for each member in a list. In Chapter 8, we discuss the advantages
of using parallel instead of for. For is a Bash keyword.
$ help for
$ for i in {A..C} "It's easy as" {1..3}; do echo $i; done
A
B
C
It's easy as
1
2
3

#git
Manage repositories for Git, which is a distributed version control system. Git (ver‐
sion 1:1.9.1) by Linus Torvalds and Junio C. Hamano (2014). http://git-scm.com.
$ sudo apt-get install git
$ man git
172 | Appendix A: List of Command-Line Tools

#grep
Print lines matching a pattern. Grep (version 2.16) by Jim Meyering (2012). http://
www.gnu.org/software/grep.
$ sudo apt-get install grep
$ man grep

#head
Output the first part of files. Head (version 8.21) by David MacKenzie and Jim
Meyering (2012). http://www.gnu.org/software/coreutils.
$ sudo apt-get install coreutils
$ man head
$ seq 5 | head -n 3
1
2
3
#header
Add, replace, and delete header lines.
$ header -h
#in2csv
Convert common, but less awesome, tabular data formats to CSV. Csvkit (version
0.8.0) by Christopher Groskopf (2014). http://csvkit.readthedocs.org.
$ sudo pip install csvkit
$ in2csv --help

#jq
Process JSON. Jq (version jq-1.4) by Stephen Dolan (2014). http://stedo
lan.github.com/jq.
$ # See website for installation instructions
$ # See website for documentation

#json2csv
Convert JSON to CSV. Json2Csv (version 1.1) by Jehiah Czebotar (2014). https://
github.com/jehiah/json2csv.
$ go get github.com/jehiah/json2csv
$ json2csv --help

#less
Paginate large files. Less (version 458) by Mark Nudelman (2013). http://www.green
woodsoftware.com/less.
$ sudo apt-get install less
$ man less
$ csvlook iris.csv | less


#R
Analyze data and create visualizations with the R programming language. To install
the latest version of R on Ubuntu, follow the instructions on http://bit.ly/ubuntu_pack
ages_for_R. R (version 3.1.1) by R Foundation for Statistical Computing (2014).
http://www.r-project.org.
$ sudo apt-get install r-base-dev
$ man R

#Rio
Load CSV from standard input into R as a data.frame, execute given commands, and
get the output as CSV or PNG
$ Rio -h
$ seq 10 | Rio -nf sum
55

#Rio-scatter
Create a scatter plot from CSV using Rio.
$ < iris.csv Rio-scatter sepal_length sepal_width species > iris.png
176 | Appendix A: List of Command-Line Tools
r

#sed
Filter and transform text. Sed (version 4.2.2) by Jay Fenlason, Tom Lord, Ken Pizzini,
and Paolo Bonzini (2012). http://www.gnu.org/software/sed.
$ sudo apt-get install sed
$ man sed

#seq
Print a sequence of numbers. Seq (version 8.21) by Ulrich Drepper (2012). http://
www.gnu.org/software/coreutils.
$ sudo apt-get install coreutils
$ man seq
$ seq 5
1
2
3
4
5

shuf
Generate random permutations. Shuf (version 8.21) by Paul Eggert (2012). http://
www.gnu.org/software/coreutils.
$ sudo apt-get install coreutils
$ man shuf

#sort
Sort lines of text files. Sort (version 8.21) by Mike Haertel and Paul Eggert (2012).
http://www.gnu.org/software/coreutils.
$ sudo apt-get install coreutils
$ man sort

#split
Split a file into pieces. Split (version 8.21) by Torbjorn Granlund and Richard M.
Stallman (2012). http://www.gnu.org/software/coreutils.
$ sudo apt-get install coreutils
$ man split
178 | Appendix A: List of Command-Line Tools

sql2csv
Executes arbitrary commands against an SQL database and outputs the results as a
CSV. Csvkit (version 0.8.0) by Christopher Groskopf (2014). http://csvkit.readthe
docs.org.
$ sudo pip install csvkit
$ sql2csv --help

#tail
Output the last part of files. Tail (version 8.21) by Paul Rubin, David MacKenzie, Ian
Lance Taylor, and Jim Meyering (2012). http://www.gnu.org/software/coreutils.
$ sudo apt-get install coreutils
$ man tail
$ seq 5 | tail -n 3
3
4
5

#tapkee
Reduce dimensionality of a data set using various algorithms. Tapkee by Sergey Lisit‐
syn and Fernando Iglesias (2014). http://tapkee.lisitsyn.me.
$ # See website for installation instructions
$ tapkee --help
$ < iris.csv cols -C species body tapkee --method pca | header -r x,y,species

#tar
Create, list, and extract TAR archives. Tar (version 1.27.1) by Jeff Bailey, Paul Eggert,
and Sergey Poznyakoff (2014). http://www.gnu.org/software/tar.
$ sudo apt-get install tar
$ man tar

#tee
Read from standard input and write to standard output and files. Tee (version 8.21)
by Mike Parker, Richard M. Stallman, and David MacKenzie (2012). http://
www.gnu.org/software/coreutils.
$ sudo apt-get install coreutils
$ man tee
#tr
Translate or delete characters. Tr (version 8.21) by Jim Meyering (2012). http://
www.gnu.org/software/coreutils.
$ sudo apt-get install coreutils
$ man tr

#tree
List contents of directories in a tree-like format. Tree (version 1.6.0) by Steve Baker
(2014). https://launchpad.net/ubuntu/+source/tree.
$ sudo apt-get install tree
$ man tree

#weka

#Weka is a collection of machine learning algorithms for data mining tasks by Mark
Hall, Eibe Frank, Geoffrey Holmes, Bernhard Pfahringer, Peter Reutemann, and Ian
H. Witten. This command-line tool allows you to run Weka from the command line.


#xml2json
Convert XML to JSON. Xml2Json (version 0.0.2) by Francois Parmentier (2014).
https://github.com/parmentf/xml2json.
$ npm install xml2json-command
$ xml2json < input.xml > output.json
