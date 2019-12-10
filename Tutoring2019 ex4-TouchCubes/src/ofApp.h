#pragma once

#include "ofxiOS.h"

#define NUM_SQUARES 5

class ofApp : public ofxiOSApp {
	
    public:
        void setup();
        void update();
        void draw();
        void exit();
	
        void touchDown(ofTouchEventArgs & touch);
        void touchMoved(ofTouchEventArgs & touch);
        void touchUp(ofTouchEventArgs & touch);
        void touchDoubleTap(ofTouchEventArgs & touch);
        void touchCancelled(ofTouchEventArgs & touch);

        void lostFocus();
        void gotFocus();
        void gotMemoryWarning();
        void deviceOrientationChanged(int newOrientation);
        
    ofVec2f pos[NUM_SQUARES], speed[NUM_SQUARES];
    ofVec2f finger[NUM_SQUARES];
    bool touched[NUM_SQUARES];
    ofColor myColor[NUM_SQUARES];
};


