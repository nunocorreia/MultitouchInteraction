#include "ofApp.h"
//--------------------------------------------------------------
void ofApp::setup(){
    ofBackground(0);
    catPic.load("catsnow.jpg");
    imagePoint.set(50,50);
}
//--------------------------------------------------------------
void ofApp::update(){
}
//--------------------------------------------------------------
void ofApp::draw(){
    catPic.draw(imagePoint);
}
//--------------------------------------------------------------
void ofApp::exit(){}
//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){
    dragVector=imagePoint-touch;
}
//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs & touch){
    if(touch.x>imagePoint.x && touch.x<imagePoint.x+catPic.getWidth() &&
       touch.y>imagePoint.y && touch.y<imagePoint.y+catPic.getHeight()){
        imagePoint=touch+dragVector;
    }
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
