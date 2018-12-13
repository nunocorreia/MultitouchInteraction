#include "ofApp.h"
void ofApp::setup(){
    ofBackground(0, 0, 200);
    ofSetCircleResolution(100);
    coreMotion.setupAccelerometer();
}
//--------------------------------------------------------------
void ofApp::update(){
    coreMotion.update();
    ofVec3f accel = coreMotion.getAccelerometerData();
    for(int i=0;i<myFlakes.size();i++){
        myFlakes[i].update(accel);
    }
}
//--------------------------------------------------------------
void ofApp::draw(){
    for(int i=0;i<myFlakes.size();i++){
        myFlakes[i].draw();
    }
}
//--------------------------------------------------------------
void ofApp::exit(){}
//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){
    Flake newFlake;
    ofVec3f pos(touch.x,touch.y,0);
    newFlake.setup(pos);
    myFlakes.push_back(newFlake);
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
