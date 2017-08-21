# YORK_SLAM_landmark

This folder was created to augment the already existing SLAM algorithm MCPTAM. Most of the changes are additional python scripts in the scripts folder. MCPTAM itself was not changed, only some calibration files were modified/added. the augmentation is supposed to allow MCPTAM to relocalize a robot's position while it is running. A picture of a landmark must be save under "logo_colour.jpg" in the scripts folder. The main program needs the logo's position so enter the 4 corners of the 2-D logo in 3-D space in the following format in logo_position.txt;
x0 y0 z0
x1 y1 z1
x2 y2 z2
x3 y3 z3

Now run the ros node "transformationMatrixNode.py" and this will take in images from "webcamPicPublisher.py" alongside "picTimer.py"

Once all three nodes are running, you should be able to verify whether or not logo recognition is taking place by the messages being printed within  transfomration matrix node.
