FROM alpine:latest

# Install Dependencies
RUN apk update \
 && apk add python3-dev ca-certificates gcc make linux-headers musl-dev ffmpeg libffi-dev

# Add project source
ADD . /usr/src/Modis
WORKDIR /usr/src/Modis

# Create volume for mapping the config
VOLUME /usr/src/Modis

# Install pip dependencies
RUN pip3 install --upgrade -r requirements.txt
RUN pip3 install modis --upgrade

CMD python launcher.py