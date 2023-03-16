import gzip
import os
from os.path import isfile, join 
import numpy as np
mnist_path = 'D:\René\Documents\python projects'
def list_files(mnist_path):
     return [(join(mnist_path,f)) for f, in os.listdir(mnist_path) if isfile(join(mnist_path, f))]
     