#include "ofApp.h"
void ofApp::setup(){
    ofBackground(0);
    ofSetRectMode(OF_RECTMODE_CENTER);
    float maxSpeed = 5;
    for(int i=0;i<NUM_SQUARES;i++){
        pos[i].set(ofRandomWidth()/2,ofRandomHeight());
        speed[i].set(ofRandom(-maxSpeed,maxSpeed),ofRandom(-maxSpeed,maxSpeed));
        touched[i] = false;
        myColor[i].set(ofRandom(255),ofRandom(255),ofRandom(255));
    }
}
void ofApp::update(){
    for(int i=0;i<NUM_SQUARES;i++){
        if(touched[i]){
            pos[i]+=(finger[i]-pos[i])/100;
        }else{
            pos[i]+=speed[i];
            if(pos[i].x<0 || pos[i].x>ofGetWidth()) speed[i].x=-speed[i].x;//speed.x*=-1
            if(pos[i].y<0 || pos[i].y>ofGetHeight()) speed[i].y=-speed[i].y;//speed.y*=-1
        }
    }
}
void ofApp::draw(){
    for(int i=0;i<NUM_SQUARES;i++){
        (touched[i])? ofSetColor(myColor[i],255) : ofSetColor(myColor[i],127);
        ofDrawBox(pos[i].x, pos[i].y, 0, 200, 200, 200);
        //ofDrawRectangle(pos[i],200,200);
    }
}
void ofApp::exit(){}
void ofApp::touchDown(ofTouchEventArgs & touch){
    touched[touch.id]=true;
    finger[touch.id].set(touch);
    myColor[touch.id].set(ofRandom(255),ofRandom(255),ofRandom(255));
}
void ofApp::touchMoved(ofTouchEventArgs & touch){
    for(int i=0;i<NUM_SQUARES;i++){
        myColor[i].set(ofRandom(255),ofRandom(255),ofRandom(255));
    }
}
void ofApp::touchUp(ofTouchEventArgs & touch){
    touched[touch.id]=false;
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
