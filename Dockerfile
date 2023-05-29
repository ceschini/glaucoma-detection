FROM nvcr.io/nvidia/pytorch:21.10-py3
RUN apt update && apt install -y zip htop screen libgl1-mesa-glx
RUN conda create -n Py39_Torch1.10_cu11.3 python=3.9 -y
RUN source activate Py39_Torch1.10_cu11.3
RUN pip3 install torch==1.10.1+cu113 torchvision==0.11.2+cu113 torchaudio==0.10.1+cu113 -f https://download.pytorch.org/whl/cu113/torch_stable.html
COPY yolov5_obb yolov5_obb
RUN cd yolov5_obb && pip install -r requirements.txt
RUN cd yolov5_obb/utils/nms_rotated && python setup.py develop
CMD jupyter notebook --ip 0.0.0.0 --no-browser --allow-root
