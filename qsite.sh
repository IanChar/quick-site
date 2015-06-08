#!/bin/bash

#Cleanup
echo "Warning! This will overwrite any index.html or style.css files are you sure you want to continute (y/n)?"
read choice
if [ $choice != 'y' ]
	then
		exit 0
fi
rm index.html
rm style.css
echo "Remember you need bootstrap.min.css for full effect."
# Add html file
touch index.html
echo "<!DOCTYPE html>" >> index.html
echo '<html>' >> index.html
echo '	<head>' >> index.html
echo '		<link rel="stylesheet" href="bootstrap.min.css">' >> index.html
echo '		<link rel="stylesheet" href="style.css">' >> index.html
echo '	</head>' >> index.html
echo '	<body>' >> index.html
echo '		<div class="container">' >> index.html
echo '			<div class="row" id="titleContainer">' >> index.html

echo -n "Title for this page: "
read title
echo '				<h1 id="title">'$title'</h1>' >> index.html

echo '			</div>' >> index.html
echo '			<div class="row bodyContainer" data-spy="scroll" data-target=".navbar">' >> index.html
echo '				<div class="container" style="padding: 0;">' >> index.html

echo -n "Number of sections: "
read numberOfSectionsh1
i=1
while [ $i -le $numberOfSections ]; do
	echo '					<!-- SECTION' $i '-->' >> index.html
	echo '					<div class="section" id="section'$i'">' >> index.html
	echo '						<div class="row sectionHeader">' >> index.html
	echo '							<div class="col-md-12">' >> index.html
	echo '								<h1 id="title">Section' $i'</h1>' >> index.html
	echo '							</div>' >> index.html
	echo ' 						</div>' >> index.html
	echo '						<div class="row sectionBody">' >> index.html
	echo '							<!--YOUR_CONTENT_HERE--><br><br><br><br><br><br><br>' >> index.html
	echo '						</div>' >> index.html
	echo '					</div>' >> index.html
	i=$((i + 1))
done

echo '				</div>' >> index.html
echo '			</div>' >> index.html
echo '		</div>' >> index.html
echo '	</body>' >> index.html
echo '</html>' >> index.html

# Add css file
touch style.css
echo 'html, body {' >> style.css
echo '    max-width: 100%;' >> style.css
echo '    overflow-x: hidden;' >> style.css
echo '}' >> style.css

echo 'h1 {' >> style.css
echo '	font-size: 75px;' >> style.css
echo '}' >> style.css

echo 'body {' >> style.css
echo '  padding: 50px;' >> style.css
echo '  font: 14px "Lucida Grande", Helvetica, Arial, sans-serif;' >> style.css

echo -n "Path for background image: "
read backgroundImage
echo '  background-image: url("'$backgroundImage'");' >> style.css

echo '  background-repeat: no-repeat;' >> style.css
echo '  background-size: 100% 100vh;' >> style.css
echo '  background-attachment: fixed;' >> style.css
echo '}' >> style.css

echo '.hidden {' >> style.css
echo '	display: none;' >> style.css
echo '}' >> style.css

echo '.container {' >> style.css
echo '	position: absolute;' >> style.css
echo '    top: 0; right: 0; bottom: 0; left: 0;' >> style.css
echo '    width: 100%;' >> style.css
echo '}' >> style.css

echo -n "Title section background R value (0-255): "
read titleR
echo -n "Title section background G value (0-255): "
read titleG
echo -n "Title section background B value (0-255): "
read titleB
echo -n "Title section background opacity value (0-1): "
read titleO
echo '#titleContainer {' >> style.css
echo '	background-color: rgba('$titleR','$titleG','$titleB','$titleO');' >> style.css
echo '	height: 100vh;' >> style.css
echo '}' >> style.css

echo '#title {' >> style.css
echo '	color: black;' >> style.css
echo '	font-size: 100px;' >> style.css
echo '	position: relative;' >> style.css
echo '	vertical-align: middle;' >> style.css
echo '	top: 25%;' >> style.css
echo '	text-align: center;' >> style.css
echo '}' >> style.css

echo '.bodyContainer {' >> style.css
echo '	position: absolute;' >> style.css
echo '	float: left;' >> style.css
echo '	width: 100%;' >> style.css

echo -n "Text color (Hex value or name): "
read textColor
echo '	color: ' $textColor';' >> style.css

echo '	padding: 0em;' >> style.css
echo '}' >> style.css

echo '.section {' >> style.css
echo '	width: 100%;' >> style.css
echo '	padding-bottom: 1.5em;' >> style.css
echo '}' >> style.css

echo -n "Section head R value (0-255): "
read sectionHeadR
echo -n "Section head G value (0-255): "
read sectionHeadG
echo -n "Section head B value (0-255): "
read sectionHeadB
echo -n "Section head opacity value (0-1): "
read sectionHeadO
echo '.sectionHeader {' >> style.css
echo '	background-color: rgba('$sectionHeadR','$sectionHeadG','$sectionHeadB','$sectionHeadO');' >> style.css
echo '	text-align: center;' >> style.css
echo '	color: #EBF0F2;' >> style.css
echo '}' >> style.css

echo '.sectionBody{' >> style.css
echo '	width: 100%;' >> style.css
echo '	padding: 0.5em;' >> style.css
echo '}' >> style.css

i=1
while [ $i -le $numberOfSections ]; do
	echo -n "Section "$i" R value (0-255): "
	read sectionR
	echo -n "Section "$i" G value (0-255): "
	read sectionG
	echo -n "Section "$i" B value (0-255): "
	read sectionB
	echo -n "Section "$i" opacity value (0-1): "
	read sectionO
	echo '#section'$i '{' >> style.css
	echo '	background-color: rgba('$sectionR','$sectionG','$sectionB','$sectionO');' >> style.css
	echo '}' >> style.css
	i=$((i + 1))
done