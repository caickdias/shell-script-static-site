#! /bin/sh

echo What is your website name?
read WEBSITE_NAME

LIST='';

for contact in $*s
do	
	name=$(echo ${contact} | cut -d',' -f1)
	phone=$(echo ${contact} | cut -d',' -f2)

	LIST="${LIST}
	<div class='card'>
		<h2>$name</h2>
		<h3>$phone</h3>		
	</div>"
done

CSS="body {
	flex: 1;	
	display: flex;
	align-items: center;
	flex-direction: column;
	justify-content: center;	
	background-color: #ECECF4;	
}

.container {
	flex: 1;
	display: flex;			
	align-items: center;
	justify-content: center;
	flex-direction: column;				
}

.headerContainer {	
	width: 100%;
	background-color: #839BFE;	
	color: white;
}

.cardsContainer {	
	width: 50%;
	padding: 10px;	
}

.card {	
	background-color: white;	
	display: flex;
	width: 80%;	
	flex-direction: column;
	align-items: center;
	justify-content: center;	

	border-radius: 5px;
  	
	margin-bottom: 10px;
}
"


HTML="<!DOCTYPE html>
<html>
	<head>
		<title>Cards List</title>
		<style>
			$CSS
		</style>
	</head>

	<body>
		<div class='container headerContainer'>
			<h1>$WEBSITE_NAME</h1>
		</div>

		<div class='container cardsContainer'>				
			$LIST
		</div>
	</body>
</html>"

echo "$HTML" > index.html


