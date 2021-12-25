float r, g, b, alpha;

PFont f;
String s;

size(600, 400);
background(0);

f = createFont("Linux Libertine O Bold", 30);

s = "Daniel Brito";

textFont(f);

int x = 25;

for (int i=0; i<s.length(); i++) {

    char c = s.charAt(i);

    if (c!=' ') {

        r = random(150, 256);
        g = random(150, 256);
        b = random(150, 256);
        alpha = random(100, 200);

        noStroke();
        fill(r, g, b, alpha);
        ellipse(x+textWidth(c)/2, height/2-8, 60, 60);
    }

    fill(0);
    text(c, x, height/2);

    x+=textWidth(c)+35;
}
