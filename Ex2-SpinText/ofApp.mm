#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    ofSetBackgroundColor(0, 0, 0);
    myFont.load("Futura.ttc", 100);
    myText="Touch";
    centerX=ofGetWidth()/2;
    centerY=ofGetHeight()/2;
    angleX=angleY=angleZ=0;
    //start the accelerometer
    ofxAccelerometer.setup();
}

//--------------------------------------------------------------
void ofApp::update(){
    angleX+=ofxAccelerometer.getForce().y;
    angleY+=ofxAccelerometer.getForce().x;
    angleZ++;
    cout << ofGetFrameRate() << endl;
}

//--------------------------------------------------------------
void ofApp::draw(){
    ofSetColor(255, 0, 0);
    ofPushMatrix();
    ofTranslate(centerX,centerY);
    ofRotateX(angleX);
    ofRotateY(angleY);
    //ofRotateZ(angleZ);
    myFont.drawString(myText, -myFont.stringWidth(myText)/2,myFont.stringHeight(myText)/2);
    ofPopMatrix();
    ofDrawBitmapString(ofGetFrameRate(), 50, 50);
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

