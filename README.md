# 141-final
Step 1: final_nemocommands.sh as bash script
Step 2: run glnemo2 with command: glnemo2-1.10.0.win64.exe crash11A.out select=0:56249,375000:431249 xrot=-45 
Step 3: we can also generate animation with the command: glnemo2-1.10.0.win64.exe ./crash11.out select=0:56249,375000:431249 hsize=400 wsize=400 play=t screenshot=frame xrot=0
the frames were compiled with ffmpeg.exe -r 5 -i frame.%05d.jpg -pix_fmt yuv420p 11.mp4
