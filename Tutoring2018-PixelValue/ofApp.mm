#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){	
    myImage.load("photo.jpg");
    myColor.set(255,0,0);
}

//--------------------------------------------------------------
void ofApp::update(){
    pixels=myImage.getPixels();
}

//--------------------------------------------------------------
void ofApp::draw(){
    ofSetColor(255);
    myImage.draw(0,0);
    ofSetColor(myColor);
    ofDrawCircle(200,1000,100);
}

//--------------------------------------------------------------
void ofApp::exit(){

}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){
    myColor.set(pixels.getColor(touch.x,touch.y));
    
    //COLOR AS INTS
    int red = int(myColor.r);
    int green = int(myColor.g);
    int blue = int(myColor.b);
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

