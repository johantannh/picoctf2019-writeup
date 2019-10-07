import tarfile

for i in range(1000, 0, -1):
  tf = tarfile.open(str(i)+".tar")
  tf.extractall()