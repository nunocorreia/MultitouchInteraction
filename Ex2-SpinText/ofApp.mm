#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    ofBackground(0);
    centerX=ofGetWidth()/2;
    centerY=ofGetHeight()/2;
    myText="Multitouch Interaction";
    angle.set(0,0,0);
    myPrettyFont.load("Abel-Regular.ttf", 100);
    //to use accelerometer values, you need to set up accelerometer
    coreMotion.setupAccelerometer();
}

//--------------------------------------------------------------
void ofApp::update(){
    coreMotion.update();
    ofVec3f accel = coreMotion.getAccelerometerData();
    angle-=accel;
}

//--------------------------------------------------------------
void ofApp::draw(){
        ofSetColor(255, 0, 0);
        float myTextHalfWidth = myPrettyFont.stringWidth(myText)/2;
        ofPushMatrix();
        ofTranslate(centerX,centerY);
        ofRotateXDeg(angle.y);
        ofRotateYDeg(angle.x);
        myPrettyFont.drawString(myText, 0-myTextHalfWidth, 0);
        ofPopMatrix();
}

//--------------------------------------------------------------
void ofApp::exit(){

}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){

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

