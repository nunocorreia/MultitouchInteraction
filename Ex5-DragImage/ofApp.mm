#include "ofApp.h"
void ofApp::setup(){
    //ofSetOrientation(OF_ORIENTATION_90_LEFT); //3
    //ofSetOrientation(OF_ORIENTATION_90_RIGHT);//4
    //ofSetOrientation(OF_ORIENTATION_DEFAULT); //1
    //ofSetOrientation(OF_ORIENTATION_180); //2
    ofSetBackgroundColor(0);
    grumpyCat.load("grumpycat.jpg");
    imagePoint.set(0, 0);
}
void ofApp::update(){}
void ofApp::draw(){
    grumpyCat.draw(imagePoint);
}
void ofApp::exit(){}
void ofApp::touchDown(ofTouchEventArgs & touch){
    //initial distance between image point and our initial touch down
    initialTouch=touch-imagePoint;
}
void ofApp::touchMoved(ofTouchEventArgs & touch){
    //subtract from the current touch the initial touch vector
    imagePoint=touch-initialTouch;
}
void ofApp::touchUp(ofTouchEventArgs & touch){}
void ofApp::touchDoubleTap(ofTouchEventArgs & touch){}
void ofApp::touchCancelled(ofTouchEventArgs & touch){}
void ofApp::lostFocus(){}
void ofApp::gotFocus(){}
void ofApp::gotMemoryWarning(){}
void ofApp::deviceOrientationChanged(int newOrientation){
    cout << newOrientation << endl;
    switch (newOrientation) {
        case 1:
            ofSetOrientation(OF_ORIENTATION_DEFAULT);
            break;
        case 2:
            ofSetOrientation(OF_ORIENTATION_180);
            break;
        case 3:
            ofSetOrientation(OF_ORIENTATION_90_LEFT);
            break;
        case 4:
            ofSetOrientation(OF_ORIENTATION_90_RIGHT);
            break;
        default:
            break;
    }
}

