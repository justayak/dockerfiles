import glob
import subprocess

print("hqqq")
for filename in glob.iglob('./**/*.py', recursive=True):
    filename = filename[2:]
    print(filename)
    subprocess.run(["2to3", '-W', filename])
