PImage img;
float offset = -1;
float easing = 0.05;
int flag = 1;
int reve = 1;
int reveflag = 1;
String fileName;
void setup() {
  size(667, 750);
  selectFolder("請選擇你圖檔的資料夾", "folderSelected");
   img = loadImage("3.jpg");  // Load an image into the program 
}

void draw() { 
   
   
     image(img, 0, 0);
     // Display at full opacity
    
    float dx = (0-img.width/2) - offset;
     if (reve == -1 && reveflag == -1) {
        dx = 2*(0-img.width/2) - offset;
    scale(-1.0, 1.0); 
     }
    if (flag == 1){image(img, dx, 0);
    }
        flag *= -1;
    delay(250);
    
    
}



void keyPressed(){

    if (key == ' ') {
      reve *= -1;
      reveflag *= -1;
    }
    

}


void folderSelected(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    println("User selected " + selection.getAbsolutePath());
    String[] pList = selection.list();
    println(pList);
    println(pList.length);
    fileName = pList[pList.length-1];
  }
}