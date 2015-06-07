#!/bin/bash

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
echo '			</div>' >> index.html
echo '			<div class="row bodyContainer" data-spy="scroll" data-target=".navbar">' >> index.html
echo '				<div class="container" style="padding: 0;">' >> index.html
echo '					<!-- FIRST SECTION -->' >> index.html
echo '					<div class="section" id="section1">' >> index.html
echo '						<div class="row sectionHeader">' >> index.html
echo '							<div class="col-md-12">' >> index.html
echo '								<h1>Section 1</h1>' >> index.html
echo '							</div>' >> index.html
echo ' 						</div>' >> index.html
echo '						<div class="row sectionBody">' >> index.html
echo '							<!--YOUR_CONTENT_HERE--><br><br><br><br><br><br><br>' >> index.html
echo '						</div>' >> index.html
echo '					</div>' >> index.html
echo '					<!-- Second SECTION -->' >> index.html
echo '					<div class="section" id="section2">' >> index.html
echo '						<div class="row sectionHeader">' >> index.html
echo '							<div class="col-md-12">' >> index.html
echo '								<h1>Section 2</h1>' >> index.html
echo '							</div>' >> index.html
echo ' 						</div>' >> index.html
echo '						<div class="row sectionBody">' >> index.html
echo '							<!--YOUR_CONTENT_HERE--><br><br><br><br><br><br><br>' >> index.html
echo '						</div>' >> index.html
echo '					</div>' >> index.html
echo '					<!-- THIRD SECTION -->' >> index.html
echo '					<div class="section" id="section3">' >> index.html
echo '						<div class="row sectionHeader">' >> index.html
echo '							<div class="col-md-12">' >> index.html
echo '								<h1>Section 3</h1>' >> index.html
echo '							</div>' >> index.html
echo ' 						</div>' >> index.html
echo '						<div class="row sectionBody">' >> index.html
echo '							<!--YOUR_CONTENT_HERE--><br><br><br><br><br><br><br>' >> index.html
echo '						</div>' >> index.html
echo '					</div>' >> index.html
echo '					<!-- FOURTH SECTION -->' >> index.html
echo '					<div class="section" id="section4">' >> index.html
echo '						<div class="row sectionHeader">' >> index.html
echo '							<div class="col-md-12">' >> index.html
echo '								<h1>Section 4</h1>' >> index.html
echo '							</div>' >> index.html
echo ' 						</div>' >> index.html
echo '						<div class="row sectionBody">' >> index.html
echo '							<!--YOUR_CONTENT_HERE--><br><br><br><br><br><br><br>' >> index.html
echo '						</div>' >> index.html
echo '					</div>' >> index.html
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

echo 'body {' >> style.css
echo '  padding: 50px;' >> style.css
echo '  font: 14px "Lucida Grande", Helvetica, Arial, sans-serif;' >> style.css
echo '  background-image: url("background.jpg");' >> style.css
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

echo '#titleContainer {' >> style.css
echo '	background-color: rgba(255, 255, 255, 0.0);' >> style.css
echo '	height: 100vh;' >> style.css
echo '}' >> style.css

echo '.bodyContainer {' >> style.css
echo '	position: absolute;' >> style.css
echo '	float: left;' >> style.css
echo '	width: 100%;' >> style.css
echo '	height: 100vh;' >> style.css
echo '	color: white;' >> style.css
echo '	padding: 0em;' >> style.css
echo '}' >> style.css

echo '.section {' >> style.css
echo '	width: 100%;' >> style.css
echo '	padding-bottom: 1.5em;' >> style.css
echo '}' >> style.css

echo '.sectionHeader{' >> style.css
echo '	background-color: rgba(15, 40, 89, 0.5);' >> style.css
echo '	text-align: center;' >> style.css
echo '	color: #EBF0F2;' >> style.css
echo '}' >> style.css

echo '.sectionBody{' >> style.css
echo '	width: 100%;' >> style.css
echo '	padding: 0.5em;' >> style.css
echo '}' >> style.css

echo '#section1 {' >> style.css
echo '	background-color: rgba(51,58,66,1);' >> style.css
echo '}' >> style.css

echo '#section2 {' >> style.css
echo '	background-color: rgba(51,58,66,1);' >> style.css
echo '}' >> style.css

echo '#section3 {' >> style.css
echo '	background-color: rgba(51,58,66,1);' >> style.css
echo '}' >> style.css

echo '#section4 {' >> style.css
echo '	background-color: rgba(51,58,66,0.7);' >> style.css
echo '}' >> style.css
