#include "ofApp.h"
void ofApp::setup(){
    //ENVIRONMENT
    ofBackground(0);
    ofSetRectMode(OF_RECTMODE_CENTER);
    //VARIABLES
    float speedMax = 4;
    for(int i=0;i<NUM_SQUARES;i++){
        squarePoint[i].set(ofRandomWidth(), ofRandomHeight());
        speedVector[i].set(ofRandom(-speedMax, speedMax),ofRandom(-speedMax,speedMax));
    }
}
void ofApp::update(){
    for(int i=0;i<NUM_SQUARES;i++){
        squarePoint[i]+=speedVector[i];
        if(squarePoint[i].x<0||squarePoint[i].x>ofGetWidth()) speedVector[i].x*=-1;
        if(squarePoint[i].y<0||squarePoint[i].y>ofGetHeight()) speedVector[i].y*=-1;
    }
}
void ofApp::draw(){
    ofSetColor(0,255,0,127);
    for(int i=0;i<NUM_SQUARES;i++){
        ofDrawRectangle(squarePoint[i], 50, 50);
    }
}
void ofApp::exit(){}
void ofApp::touchDown(ofTouchEventArgs & touch){
    squarePoint[touch.id]=touch;
}
void ofApp::touchMoved(ofTouchEventArgs & touch){
    squarePoint[touch.id]=touch;
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
