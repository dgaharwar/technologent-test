 #! /bin/bash
 echo "OPM CMaaS"
 echo "Hello World"
 sudo bash -c 'echo "OPM CMaaS" | tee /home/ec2-user/opm.log'
 sudo bash -c 'echo "OPM CMaaS" >> /home/ec2-user/opm.txt'
 sudo bash -c 'echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDT
+qPnovKEbCKG4zWm3Yy8KC5W
+8RL8mTLTkpVRemeWMZoR6L2O7xFkq5bT2LIPlskQh46YsFkjQCtJ70XkiDnu3znz06/
LoJUUEQkF0RLP97C6lHE1gY5rRlbS5W1ulb/hbbmCNV3xdOsPRPR0s3Azho1InOlJbL0FRzz2v
+KounyCSf684ElQI9XiuGSrj7nwY/dth+E9Ea7sEh7mtDIvc6fGfapAZ2wr
+AvqOdqKNh1lGhduldtvOk2VHtnYfrVf9ItT5Prit2GAj
+PpLhkwa744cjwn4aFiVwzN6waD7wChSH9+K9mbXGzECZJVE+3agiqOVI/u3oIc+pghfYH 
opmadminprov"  >> /home/ec2-user/.ssh/authorized_keys'
 sudo bash -c 'echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCgAQnlc+xK/
SQFaSjPVpU5aqLRIkn0b64FmhIsUY/9RgfQBeFlMOXh2ueCV/
wjqX7FTsRKBVQJ0Q74xnGSTc3wjALoMMlpyj9mWIsBnVIMN5otyOlSunh/
00EpEsAThfFSvSDhmylKU5NZC4SqErwgbQNOlN4fMgh+GFEtXm4l5PpLHm5zxYDDnPl1Eezh0MtM
+SNXNAarD0I1xiyI2Rq4k7lVQqrNIqZ5THmH4EuE8kGr5pzBV43mbZJkTcN4szDZzij+QtBuJp/
oq19nZeBYm+c7ldl59eTgDl9u/ZZ+XGGHEDa2I8jpFuopWD1PhkLi0QWoQL5aSyzLcvOdXZcT 
morpheus-Western Union" >> /home/ec2-user/.ssh/authorized_keys'
 sudo bash -c 'echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQClwCAppeJ/
tQ4yzsiOFIz9hQKo/DseiF/gm8RJKr8QIiV2vp/fYZeD+mDrO04YY49gLt1StvcTCl9Hg+DNzARz
+gaH130pF4qDXhRb7aRTPPcHkDc3rKCBXFwBhR0zPJoJT7GpfZ5ClMToe8zJvV7Zg3g12VYs2yYvo
Kh4pajCRDJ1l2GIp/S+4vL3fRCn5Nhqv82DssBG216e
+lBjomPMsR0DAz5HUJLDpmCK6dg8Hql6DZjqwAgh16fhZyknzZGqdhzjfHQDpzGQE83uZFet5VpkA
gTMmyS1OXMkYQx4M+xmFSvV1nvuBm0X0NRzxZ4qj1x+G1QIUm5RtCvCuSPR tamr-Western 
Union" >> /home/ec2-user/.ssh/authorized_keys'
 
 sudo bash -c '<%=instance?.cloudConfig?.agentInstall%> | tee /home/ec2-user/
agentInstall.log'
 sudo bash -c '<%=instance?.cloudConfig?.finalizeServer%> | tee /home/
ec2-user/finalizeServer.log'