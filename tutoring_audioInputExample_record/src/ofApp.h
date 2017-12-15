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

    //AUDIO
    void audioIn(float * input, int bufferSize, int nChannels);
    void audioOut(float * output, int bufferSize, int nChannels);

	int	initialBufferSize;
	int	sampleRate;
	int	drawCounter;
    int bufferCounter, outCounter;
	float * buffer;
    
    double outputs;
    float volume;
    
    bool recording, playing;
    vector <float> sample;
    int playhead;
    
    //UI
    ofRectangle btnRecord, btnStop, btnPlay;

    
};

