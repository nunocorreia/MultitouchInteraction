#pragma once
#include "ofxiOS.h"
class Flake{
public:
    void setup(ofVec3f myPoint){
        flakePoint=myPoint;
        rotationSpeed = ofRandomf();
        rotationAngle = 0;
    }
    void update(ofVec3f myAccel){
        rotationAngle+=rotationSpeed;
        flakePoint.x+=myAccel.x;
        flakePoint.y-=myAccel.y;
        flakePoint.z+=myAccel.z;
    }
    void draw(){
        ofPushMatrix();
        ofTranslate(flakePoint);
        ofRotateZDeg(rotationAngle);
        ofSetColor(255,127);
        ofDrawEllipse(0,0,80,30);
        ofDrawEllipse(0,0,30,80);
        ofPopMatrix();
    }
    ofVec3f flakePoint;
    float rotationAngle, rotationSpeed;
};

