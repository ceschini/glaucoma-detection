# Glaucoma Ellipse Detection

This repo aims to detect ocular structures of fundus images using ProbIoU loss and an oriented bounding box object detector.

## Manual Installation

First, we will create a python virtual environment for our project. Then we will activate this venv and install the package requirements listed in ```requirements.txt```. Finally, we will clone our OBB network, [Yolo v5](https://github.com/hukaixuan19970627/yolov5_obb/blob/master/docs/install.md?ref=blog.roboflow.com), install it's package requirements and run it's setup.

```bash
    virtualenv .venv
    source .venv/bin/activate
    pip install -r requirements
    git clone https://github.com/hukaixuan19970627/yolov5_obb.git
    pip install -r requirements
    cd utils/nms_rotated
    python setup.py develop
```

## Container Installation

In order to install it by Docker Container simply clone the network repo and run the following command:

```bash
    git clone https://github.com/hukaixuan19970627/yolov5_obb.git
    docker build -t yolov5-obb .
```

After build, run the container by ```docker run -dp 8888:8888 yolov5-obb```, and copy the returned container ID.

You can then open the Jupyter Notebook kernel by going to http://localhost:8888. If you are prompted to insert a Token, run ```docker logs <container_ID>```, replacing <container_ID> with the previously coppied ID. Then, simply locate the token on the logged container stdout and paste it on the notebook tab.
