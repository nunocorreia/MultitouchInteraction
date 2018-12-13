#include "ofApp.h"
void ofApp::setup(){
    ofBackground(0);
    hkiPics[0].load("Finlandia-talo.jpg");
    hkiPics[1].load("Kiasma.jpg");
    hkiPics[2].load("Suurkirkko.jpg");
    currentPic=1;
    float buttonSize=50;
    for(int i=0;i<NUM_IMAGES;i++){
        buttonsPoint[i].set(i*buttonSize+10*(i+1), 10);
        buttons[i].set(buttonsPoint[i], buttonSize, buttonSize);
    }
}
void ofApp::update(){}
void ofApp::draw(){
    ofSetOrientation(OF_ORIENTATION_90_LEFT);
    hkiPics[currentPic].draw(0,0, ofGetWidth(),ofGetHeight());
    ofNoFill();
    for(int i=0;i<NUM_IMAGES;i++){
        ofDrawRectangle(buttons[i]);
        ofDrawBitmapString("image"+ofToString(i), buttonsPoint[i]);
    }
}
void ofApp::exit(){}
void ofApp::touchDown(ofTouchEventArgs & touch){
    for(int i=0;i<NUM_IMAGES;i++){
        if(buttons[i].inside(touch)) currentPic=i;
    }
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
