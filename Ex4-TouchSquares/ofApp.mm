#include "ofApp.h"
//--------------------------------------------------------------
void ofApp::setup(){
    ofSetBackgroundColor(0);
    ofSetRectMode(OF_RECTMODE_CENTER);
    for(int i=0;i<NUM_SQUARES;i++){
        squarePoint[i].set(ofRandomWidth(),ofRandomHeight());
        speed[i].set(ofRandom(-5,5),ofRandom(-5,5));
    }
}
//--------------------------------------------------------------
void ofApp::update(){
    for(int i=0;i<NUM_SQUARES;i++){
        if(squarePoint[i].x<0 || squarePoint[i].x>ofGetWidth()){
            speed[i].x*=-1;
        }
        if(squarePoint[i].y<0 || squarePoint[i].y>ofGetHeight()){
            speed[i].y*=-1;
        }
        squarePoint[i]+=speed[i];
    }
}
//--------------------------------------------------------------
void ofApp::draw(){
    for(int i=0;i<NUM_SQUARES;i++){
        ofSetColor(0, 255, 0, 127);
        ofDrawRectangle(squarePoint[i], 100, 100);
        ofSetColor(255);
        ofDrawBitmapString(i, squarePoint[i]);
    }
}
//--------------------------------------------------------------
void ofApp::exit(){
}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){
    squarePoint[touch.id]=touch;
}

//--------------------------------------------------------------
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

