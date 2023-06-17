#!/bin/bash


snaprotate in=mice11.snp out=miceA_11.snp theta=25 spinvector=-.866,-.5,0
snaprotate in=mice11.snp out=miceB_11.snp theta=40 spinvector=.5,.866,0

snapshift in=miceA_11.snp out=miceA_11As.snp rshift=-0.39269908169872414,-0.18342513753404244,0 vshift=0.3330194724908539,0.5231057641398075,0
snapshift in=miceB_11.snp out=miceB_11Bs.snp rshift=0.39269908169872414,0.18342513753404244,0 vshift=-0.3330194724908539,-0.5231057641398075,0

snapstack in1=miceA_11As.snp in2=miceB_11Bs.snp out=mice_test_crash11.snp deltar=0,0,0  deltav=0,0,0

gyrfalcON mice_test_crash11.snp crash11.out tstop=15 step=0.07 kmax=6 eps=0.03

find . -type f -not ( -name 'mice11.snp' -or -name 'crash11.out') -delete