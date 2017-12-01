#pragma once

#include "ofxiOS.h"

class ofApp : public ofxiOSApp{
	
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
    
    //1. Create a new object of class ofTrueTypeFont. This object can have any name you want
    ofTrueTypeFont myFont;
    string myText;
    float centerX, centerY;
    float angleX, angleY, angleZ;

};


