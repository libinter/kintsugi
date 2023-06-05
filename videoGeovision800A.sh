#!/bin/zsh
sudo modprobe -r bttv
sudo modprobe bttv card=157,157,157,157 vbibufs=8 gbuffers=16 full_luma_range=1
# sudo modprobe bttv card=157,157,157,157 full_luma_range=1
for i in {0..3}; do 
	v4l2-ctl --device /dev/video$i --set-standard pal
	v4l2-ctl --device /dev/video$i --set-fmt-video=width=720,height=576
	v4l2-ctl --device /dev/video$i --set-ctrl comb_filter=1
	# v4l2-ctl --device /dev/video$i --set-fmt-video=width=720,height=576,pixelformat=13,field=none
	# v4l2-ctl --device /dev/video$i --set-fmt-video=width=1135,height=944,pixelformat=YV12,field=bottom
	# v4l2-ctl --device /dev/video$i --set-fmt-video-out=colorspace=rec709

	# ,colorspace=rec709
done