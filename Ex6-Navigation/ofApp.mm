#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){	
    float btnWidth = 128;
    float btnHeight = 88;
    btn1.set(0,ofGetHeight()-btnHeight,btnWidth,btnHeight);
    btn2.set(btnWidth,ofGetHeight()-btnHeight,btnWidth,btnHeight);
    btn3.set(btnWidth*4,ofGetHeight()-btnHeight,btnWidth,btnHeight);
    img1.load("IMG_1.PNG");
    img2.load("IMG_2.PNG");
    img3.load("IMG_3.PNG");
    section=1;

}

//--------------------------------------------------------------
void ofApp::update(){

}

//--------------------------------------------------------------
void ofApp::draw(){
    switch (section) {
        case 1:
            img1.draw(0,0,ofGetWidth(),ofGetHeight());
            break;
        case 2:
            img2.draw(0,0,ofGetWidth(),ofGetHeight());
            break;
        case 3:
            img3.draw(0,0,ofGetWidth(),ofGetHeight());
            break;
        default:
            break;
    }
    //you might want, or not, to make the buttons visible. if you want:
    ofNoFill();
    ofDrawRectangle(btn1);
    ofDrawRectangle(btn2);
    ofDrawRectangle(btn3);

}

//--------------------------------------------------------------
void ofApp::exit(){

}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){
    if(btn1.inside(touch.x, touch.y)){
        section=1;
    }
    if(btn2.inside(touch.x, touch.y)){
        section=2;
    }
    if(btn3.inside(touch.x, touch.y)){
        section=3;
    }
    printf("Section: %i",section);
    

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

