import processing.core.*;public class IG3D{  private PApplet p;  public IG3D(PApplet p){    this.p = p;  }  public void render(Cube c){    Triangle3D[]t = c.getTriangles();    for (int i=0; i<t.length; i++){      p.beginShape(p.TRIANGLES);      for (int j=0; j<3; j++){        p.vertex(t[i].v[j].x, t[i].v[j].y, t[i].v[j].z);      }      p.endShape();    }     } }