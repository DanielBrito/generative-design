private void project(Triangle3D t){    float projectedX = 0, projectedY = 0;    float projectionRatio = 0;    viewDistance = p.width/2 / p.tan(p.radians(viewAngle/2));    p.beginShape(p.TRIANGLES);    for (int j=0; j<3; j++){      // calculate perspective ratio      projectionRatio = viewDistance/(viewDistance - (t.v[j].z+transVals.z));      // 2D perspective projection with translation      projectedX = t.v[j].x * projectionRatio + transVals.x;      projectedY = t.v[j].y * projectionRatio + transVals.y;      p.vertex(projectedX, projectedY);    }    p.endShape();   }