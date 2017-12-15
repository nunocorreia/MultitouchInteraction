
#include "ofApp.h"

//  IMPORTANT!!! if your sound doesn't work in the simulator
//	read this post => http://www.cocos2d-iphone.org/forum/topic/4159
//  which requires you set the input stream to 24bit!!

//--------------------------------------------------------------
void ofApp::setup(){
    ofSetFrameRate(60);
    ofBackground(255);
    //ofSetOrientation(OF_ORIENTATION_90_RIGHT);//Set iOS to Orientation Landscape Right
    
    //for some reason on the iphone simulator 256 doesn't work - it comes in as 512!
    //so we do 512 - otherwise we crash
    initialBufferSize = 512;
    sampleRate = 44100;
    drawCounter = 0;
    bufferCounter = outCounter = 0;
    
    buffer = new float[initialBufferSize];
    memset(buffer, 0, initialBufferSize * sizeof(float));
    
    // 0 output channels,
    // 1 input channels
    // 44100 samples per second
    // 512 samples per buffer
    // 1 buffer
    // ofxiOSSoundStream::setMixWithOtherApps(true);

    ofSoundStreamSetup(2, 1, this, sampleRate, initialBufferSize, 1);
    
    float size=50;
    btnRecord.set(size,size,size,size);
    btnStop.set(ofGetWidth()/2-size/2,size,size,size);
    btnPlay.set(ofGetWidth()-size*2,size,size,size);
    recording=playing=false;
    playhead=0;
}

//--------------------------------------------------------------
void ofApp::update(){
    
}

//--------------------------------------------------------------
void ofApp::draw(){
    drawCounter++;
    
    ofPushStyle();
    ofSetColor(0);
    ofSetLineWidth(2);
    
    float y1 = ofGetHeight() * 0.5;
    ofDrawLine(0, y1, ofGetWidth(), y1);
    
    for(int i=0; i<initialBufferSize; i++){
        float p = i / (float)(initialBufferSize-1);
        float x = p * ofGetWidth();
        float y2 = y1 + buffer[i] * 200;
        
        ofDrawLine(x, y1, x, y2);
    }
    ofPopStyle();
    
    ofPushStyle();
    ofSetColor(0);
    ofDrawBitmapString("touch to play sound.", 20, ofGetHeight() - 80);
    ofDrawBitmapString("buffers received: " + ofToString(bufferCounter), 20, ofGetHeight() - 60);
    ofDrawBitmapString("buffers out: " + ofToString(outCounter), 20, ofGetHeight() - 40);
    ofDrawBitmapString("draw routines called: " + ofToString(drawCounter), 20, ofGetHeight() - 20);
    ofPopStyle();
    
    ofSetColor(255, 0, 0);
    ofDrawRectangle(btnRecord);
    ofSetColor(0);
    ofDrawRectangle(btnStop);
    ofSetColor(0,255,0);
    ofDrawRectangle(btnPlay);
    ofSetColor(0);
}

//--------------------------------------------------------------
void ofApp::exit(){
    //
}

//--------------------------------------------------------------
void ofApp::audioIn(float * input, int bufferSize, int nChannels){
    if(initialBufferSize < bufferSize){
        ofLog(OF_LOG_ERROR, "your buffer size was set to %i - but the stream needs a buffer size of %i", initialBufferSize, bufferSize);
    }
    
    int minBufferSize = MIN(initialBufferSize, bufferSize);
    for(int i=0; i<minBufferSize; i++) {
        buffer[i] = input[i];
        if(recording) sample.push_back(buffer[i]);
    }
    bufferCounter++;
}

//void ofApp::audioOut(ofSoundBuffer &buffer) {
//    outCounter++;
//    cout << buffer.size() << endl;
//}

void ofApp::audioOut(float * output, int bufferSize, int nChannels) {
    if( initialBufferSize < bufferSize ){
        ofLog(OF_LOG_ERROR, "your buffer size was set to %i - but the stream needs a buffer size of %i", initialBufferSize, bufferSize);
        return;
    }
    if(playing){
        outCounter++;

        for (int i = 0; i < bufferSize; i++){
            float currentSample;
            if(sample.size() > 0){
                currentSample = sample[playhead];
            }
            output[i*nChannels] =currentSample;
            output[i*nChannels + 1] =currentSample;
            playhead++;
            cout << "playhead" << playhead << endl;
            if(playhead >= sample.size()){
                playhead = 0;
            }
        }
    }else{
        for (int i = 0; i < bufferSize; i++){
            output[i*nChannels] =0;
            output[i*nChannels + 1] =0;
        }
    }
}


//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){
    if(btnRecord.inside(touch)){
        sample.clear();
        recording=true;
        cout << "recording" << recording << endl;
    }
    if(btnStop.inside(touch)){
        if(playing){
            sample.clear();
            playhead=outCounter=0;
        }
        recording=playing=false;
        //sample.clear();
        cout << "recording" << recording << sample.size() << "playing" << playing << endl;
    }
    if(btnPlay.inside(touch)){
        playing=true;
        cout << "playing" << playing << endl;
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

