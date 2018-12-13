#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    img.load("tree.jpg");
    fbo.allocate(img.getWidth(), img.getHeight(),GL_RGBA);
    fbo.begin();
    {
        ofClear(0,0,0,0);
        ofSetColor(255);
        ofDrawEllipse(100, 100, 50, 50);
    }
    fbo.end();
    
    img.getTexture().setAlphaMask(fbo.getTexture());

}

//--------------------------------------------------------------
void ofApp::update(){

}

//--------------------------------------------------------------
void ofApp::draw(){
    img.draw(0,0);

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
