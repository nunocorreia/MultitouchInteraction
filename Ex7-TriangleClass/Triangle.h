#pragma once

#include "ofxiOS.h"

class Triangle{
    
    public:

    void setup(ofPoint pos){
        center=pos;
        speed=ofRandom(2);
    }
    void update(){
        center.x+=ofxAccelerometer.getForce().x;
        center.y-=ofxAccelerometer.getForce().y;
        center.z+=ofxAccelerometer.getForce().z;
    }
    void draw(){
        ofPushMatrix();
        ofTranslate(center);
        ofRotateZ(ofGetFrameNum()*speed);
        ofSetColor(255,200);
        ofDrawTriangle(0,0,50,0,50,50);
        ofDrawTriangle(0,0,-50,0,-50,-50);
        ofPopMatrix();
    }

    ofPoint center;
    float speed;
    
};
