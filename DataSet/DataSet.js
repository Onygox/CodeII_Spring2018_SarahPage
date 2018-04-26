//most popular web fonts visualizer
//data taken from http://www.fontreach.com and http://goohackle.com/

var fonts = [];
var letters = [];
var whichFont = [];
var stats;
var helvetica1, verdana, opensans, helvetica2, georgia, tahoma, menlo, trebuchet, monaco, roboto;
var which;

function preload(){
	stats = loadTable("Fonts.csv");
	helvetica1 = loadFont("HelveticaNeue.ttf");
	verdana = loadFont("Verdana.ttf");
	opensans = loadFont("OpenSans.ttf");
	helvetica2 = loadFont("Helvetica.ttf");
	georgia = loadFont("Georgia.ttf");
	tahoma = loadFont("Tahoma.ttf");
	menlo = loadFont("Menlo.ttf");
	trebuchet = loadFont("TrebuchetMS.ttf");
	monaco = loadFont("Monaco.ttf");
	roboto = loadFont("Roboto.ttf");
	whichFont = [helvetica1, verdana, opensans, helvetica2, georgia, tahoma, menlo, trebuchet, menlo, trebuchet, monaco, roboto];
}

function setup(){
	createCanvas(windowWidth, windowHeight);
	background(0, 255, 0);
	print(stats);
	var rowStats = stats.getRowCount();
	for (var i = 0; i < stats.getRowCount(); i++){
		whichFont[i] = stats.getString(i, 0);
		fonts[i] = stats.getNum(i, 1);
		letters[i] = stats.getString(i, 2);
		print(whichFont[i] + ' : ' + fonts[i] + ' : ' + letters[i]);
	}
}

function draw(){
	createCanvas(windowWidth, windowHeight);
	background(255, 182, 193);
	fill(0);
	textAlign(CENTER);
	textSize(18);
	text('Most Frequent Letters On The Internet Typed In The Most Popular Web Fonts', windowWidth/2, windowHeight * 11/12);
	text('Using Data From http://www.fontreach.com and http://goohackle.com/', windowWidth/2, windowHeight * 19/20);
	which = 9;
	for (var i = windowWidth * 1/12; i < windowWidth - 50; i += windowWidth/12){
		textSize(fonts[which]/500);
		textFont(whichFont[which]);
		text(letters[which], i, windowHeight * 3/5);
		textSize(24);
		text(whichFont[which], i, windowHeight * 5/6);
		which--;
	}
}
