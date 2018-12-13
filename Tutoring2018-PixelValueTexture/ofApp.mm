#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    //TEXTURE CODE
    w = ofGetWidth();
    h = ofGetHeight();
    texColor.allocate(w,h,GL_RGB);
    colorPixels         = new unsigned char [w*h*3];
}

//--------------------------------------------------------------
void ofApp::update(){
    //TEXTURE CODE
    // color pixels, use w and h to control red and green
    for (int i = 0; i < w; i++){
        for (int j = 0; j < h; j++){
            colorPixels[(j*w+i)*3 + 0] = ofMap(i,0,w,0,255);    // r
            colorPixels[(j*w+i)*3 + 1] = ofMap(touchPoint.y,0,h,0,255);    // g
            colorPixels[(j*w+i)*3 + 2] = ofMap(touchPoint.x,0,w,0,255); // b
        }
    }

}

//--------------------------------------------------------------
void ofApp::draw(){
    //TEXTURE CODE
    texColor.loadData(colorPixels, w,h, GL_RGB);
    texColor.draw(0,0,w,h);
}

//--------------------------------------------------------------
void ofApp::exit(){

}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){
    int x=touch.x;
    int y=touch.y;
    float red=colorPixels[w*y*3+x*3];
    float green=colorPixels[w*y*3+x*3+1];
    float blue=colorPixels[w*y*3+x*3+2];

    cout << "R:" << red << " G:"<< green << " B:" << blue << endl;

    //HEX CONVERSION
    std::stringstream stringRed;
    stringRed << std::hex << red; // int decimal_value
    std::string redHex ( stringRed.str() );
    std::stringstream stringGreen;
    stringGreen << std::hex << green; // int decimal_value
    std::string greenHex ( stringGreen.str() );
    std::stringstream stringBlue;
    stringBlue << std::hex << blue; // int decimal_value
    std::string blueHex ( stringBlue.str() );
    cout << "R:" << redHex << " G:"<< greenHex << " B:" << blueHex << endl;

}

//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs & touch){
    //TEXTURE CODE
    touchPoint=touch;
}

//--------------------------------------------------------------
void ofApp::touchUp(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchDoubleTap(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void ofApp::lostFocus(){

}

//--------------------------------------------------------------
void ofApp::gotFocus(){

}

//--------------------------------------------------------------
void ofApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void ofApp::deviceOrientationChanged(int newOrientation){

}

