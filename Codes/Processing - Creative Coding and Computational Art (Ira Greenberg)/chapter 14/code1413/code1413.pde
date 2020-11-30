public class Cube{  private float w, h, d;  private Vector3D[]v = new Vector3D[8];  private Triangle3D[]t = new Triangle3D[12];  public Cube(float w, float h, float d){    this.w = w;    this.h = h;    this.d = d;    setVertices();    setTriangles();  } //getter/setters  public float getWidth(){    return w;  }  public void setWidth(float w){    this.w = w;  }  public float getHeight(){    return h;  }  public void setHeight(float h){    this.h = h;  }  public float getDepth(){    return d;  }  public void setDepth(float d){    this.d = d;  } //required implemented methods public void setVertices(){    v[0] = new Vector3D(-w/2, -h/2, d/2);    v[1] = new Vector3D(w/2, -h/2, d/2);    v[2] = new Vector3D(w/2, h/2, d/2);    v[3] = new Vector3D(-w/2, h/2, d/2);    v[4] = new Vector3D(w/2, -h/2, -d/2);    v[5] = new Vector3D(-w/2, -h/2, -d/2);    v[6] = new Vector3D(-w/2, h/2, -d/2);    v[7] = new Vector3D(w/2, h/2, -d/2);  }  public Vector3D[] getVertices(){    return v;  }  public void setTriangles(){    //front face    t[0] = new Triangle3D(v[0], v[1], v[2]);    t[1] = new Triangle3D(v[0], v[2], v[3]);    //back face    t[2] = new Triangle3D(v[4], v[5], v[6]);    t[3] = new Triangle3D(v[4], v[6], v[7]);    //right face    t[4] = new Triangle3D(v[1], v[4], v[7]);    t[5] = new Triangle3D(v[1], v[7], v[2]);    //left face    t[6] = new Triangle3D(v[5], v[0], v[3]);    t[7] = new Triangle3D(v[5], v[3], v[6]);    //top face    t[8] = new Triangle3D(v[0], v[5], v[4]);    t[9] = new Triangle3D(v[0], v[4], v[1]);    //bottom face    t[10] = new Triangle3D(v[2], v[7], v[6]);    t[11] = new Triangle3D(v[2], v[6], v[3]);  }  public Triangle3D[] getTriangles(){    return t;  }}