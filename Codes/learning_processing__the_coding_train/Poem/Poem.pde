int index = 0;

String[] words;

void setup() {

    size(600, 400);
    background(0);

    String[] lines = loadStrings("hipotemusa.txt");
    String poem = join(lines, " ");
    words = split(poem, " ");
}

void draw() {

    background(0);
    fill(255);
    textSize(64);
    textAlign(CENTER);

    if (index<words.length) {
        
        text(words[index++], width/2, height/2);
        frameRate(1);
    }
    
    if(index==words.length){
        
        text(words[index-1], width/2, height/2);
    }
}
