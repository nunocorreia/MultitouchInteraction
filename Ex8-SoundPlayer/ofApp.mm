#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){	
    //mySound.setMultiPlay(true);
    mySound.load("25257__suonho__deconstruction-set-thefinalcrash02.mp3");
    mySound.setLoop(true);
}

//--------------------------------------------------------------
void ofApp::update(){
}
//--------------------------------------------------------------
void ofApp::draw(){
    ofDrawBitmapString("Volume:"+ofToString(mySound.getVolume()),10,10);
    ofDrawBitmapString("Speed:"+ofToString(mySound.getSpeed()),10,20);
}
//--------------------------------------------------------------
void ofApp::exit(){}
//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){
    mySound.play();
    mySound.setSpeed(ofMap(touch.x,0,ofGetWidth(),0.5,2));
    mySound.setVolume(ofMap(touch.y,ofGetHeight(),0,0,1));
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
