#include "ofApp.h"
//--------------------------------------------------------------
void ofApp::setup(){	
    ofSetBackgroundColor(0);
    ofSetCircleResolution(100);
    ofSetBackgroundAuto(false);
    //ofSetFrameRate(200);
    radius=50;
}
//--------------------------------------------------------------
void ofApp::update(){
}
//--------------------------------------------------------------
void ofApp::draw(){
    ofFill();
    ofSetColor(255,50);
    ofDrawCircle(posX, posY, radius);
    ofNoFill();
    ofSetColor(255,0,0,50);
    ofDrawCircle(posX, posY, radius);
    cout << ofGetFrameRate() <<endl;
}
//--------------------------------------------------------------
void ofApp::exit(){
}
//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){
    if(touch.id==0){
        posX=touch.x;
        posY=touch.y;
    }
}
//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs & touch){
    if(touch.id==0){
        posX=touch.x;
        posY=touch.y;
    }else{
        radius=ofDist(posX,posY,touch.x,touch.y);
    }
}
//--------------------------------------------------------------
void ofApp::touchUp(ofTouchEventArgs & touch){
}
//--------------------------------------------------------------
void ofApp::touchDoubleTap(ofTouchEventArgs & touch){
    ofSetColor(0);
    ofFill();
    ofDrawRectangle(0, 0, ofGetWidth(), ofGetHeight());
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

