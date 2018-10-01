#include <opencv2/opencv.hpp>
#include <iostream>

using namespace cv;
using namespace std;

int main()
{
    VideoCapture cam;
    cam.open(0);
    if(!cam.isOpened())
        cout << "failed" << endl;
    Mat frame;
    while(1)
    {
        cam >> frame;
        if(!frame.empty())
        {
            imshow("Video",frame);
        }
        else
            continue;
        if(waitKey(30) == 83 || waitKey(30) == 115)
        {
            imshow("Current",frame);
            break;
        }
    }
    cam.release();
    waitKey(0);
    return 0;
}

