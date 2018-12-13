#include "ofApp.h"
void ofApp::setup(){
    ofBackground(0);
    ofSetCircleResolution(100);
    ofSetBackgroundAuto(false);
    touchPoint.set(-500,-500);
    myRadius=50;

}
void ofApp::update(){}
void ofApp::draw(){
    ofSetColor(255,50);
    ofFill();
    ofDrawCircle(touchPoint, myRadius);
    ofSetColor(0,0,255,50);
    ofNoFill();
    ofDrawCircle(touchPoint, myRadius);
}
void ofApp::exit(){}
void ofApp::touchDown(ofTouchEventArgs & touch){
    cout << touch.id << endl;
    if(touch.id==0) touchPoint.set(touch.x,touch.y);
}
void ofApp::touchMoved(ofTouchEventArgs & touch){
    

    if(touch.id==0){
        touchPoint.set(touch);
    }
    if(touch.id==1){
        //next 2 lines are the same
        //myRadius=ofDist(touchPoint.x,touchPoint.y,touch.x,touch.y);
        myRadius=touchPoint.distance(touch);
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
