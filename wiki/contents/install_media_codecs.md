## Install Media Codecs - Fedora
```bash
sudo dnf install -y gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel

```

```bash
sudo dnf install -y lame\* --exclude=lame-devel

```


```bash
sudo dnf group upgrade --with-optional Multimedia -y

```

#### H/W Video Acceleration
```bash
sudo dnf install -y ffmpeg ffmpeg-libs libva libva-utils

```

* Intel
```bash
sudo dnf install intel-media-driver

```

* AMD
```bash
sudo dnf swap mesa-va-drivers mesa-va-drivers-freeworld

```
