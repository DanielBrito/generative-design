import com.iragreenberg.EmbeddedP55;import java.awt.*;import java.awt.event.*; import java.applet.Applet;public class Controller extends Frame {  private int w = 400, h = 422;  // constructor  public Controller() {    // call to superclass needs to come first in constructor    super("Frame with Embedded PApplet Component");    // set up frame (which will hold applet)    setSize(w, h);    setLayout(new FlowLayout(FlowLayout.LEFT, 0, 0));    // Instantiate Applet object    Applet p55 = new EmbeddedP55(w, h);    // add Applet component to frame    add(p55);    // won't allow frame to be resized    setResizable(false);    // allow window and applicaiton to be closed     addWindowListener(new WindowAdapter() {      public void windowClosing(WindowEvent e) {        System.exit(0);      }    });    // Next comment taken directly from PApplet class:     /* "...ensures that the animation thread is started      and that other internal variables are properly set."*/    p55.init();   }  public static void main(String[] s){    new Controller().setVisible(true);  }}