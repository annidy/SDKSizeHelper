#!/usr/bin/env python3
# -*- coding: utf8 -*-

'''
xcodebuild -project testProj/testProj.xcodeproj -target testProj -configuration Release clean
xcodebuild -project testProj/testProj.xcodeproj -target testProj -configuration Release -arch arm64 -sdk iphoneos12.0
'''

import os
from shutil import copyfile

def build(xcodeproj, target):
    os.system("xcodebuild -project {0} -target {1} -configuration Release clean".format(xcodeproj, target))
    os.system("xcodebuild -project {0} -target {1} -configuration Release -arch arm64 -sdk iphoneos12.0".format(xcodeproj, target))

    os.system("/usr/bin/zip --symlinks --verbose --recurse-paths {1}.ipa {0}/build/Release-iphoneos/{1}.app".format(os.path.dirname(xcodeproj), target))

    st = os.stat("{0}.ipa".format(target))
    return st.st_size

print(build("testProj/testProj.xcodeproj", "testProj"))

