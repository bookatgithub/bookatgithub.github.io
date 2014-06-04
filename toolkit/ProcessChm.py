#!/usr/bin/pythocn
#-*- coding:UTF-8 -*-
'''
处理chmdecoder生成的文件
'''

import os
import hashlib

CODESNIP="""<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-49506219-2', 'bookatgithub.github.io');
  ga('send', 'pageview');

</script>"""


def ProcessDir(curdir):
    os.chdir(curdir)
    files = os.listdir(".")
    for f in files:
        if os.path.isfile(f) and f.lower().endswith(".html"):
            #将__left替换并添加analytics代码
            fp = open(f, "rb")
            buff = fp.read()
            fp.close()
            buff = buff.replace("___left","left")
            buff = buff.replace("</HEAD>", CODESNIP+"</HEAD>");
            fp = open(f,"wb")
            fp.write(buff)
            fp.close()
        else:
            os.chdir(f)
            #修改文件名
            os.rename("___dtree.css","dtree.css")
            os.rename("___dtree.js","dtree.js")
            os.rename("___left.htm","left.htm")
            #修改___left.htm
            fp = open("left.htm","rb")
            buff = fp.read()
            fp.close()
            buff = buff.replace("___dtree","dtree")
            fp = open("left.htm","wb")
            fp.write(buff)
            fp.close()
            os.chdir("..")
    return True

def main2():
    SRC="D:\\chm"
    ProcessDir(SRC)


LIST="""
"""

LIST=LIST.splitlines()
def main():
    global LIST
    for b in LIST:
        print b
        tlt = b.replace(" ","-")
        tlt = tlt.replace(".html","")
        fn = "2014-06-04-"+tlt+".md"
        fp = open(fn,"wb")
        buff = '''---
layout: post
category : programming
tagline: TODO
tags : TODO
---        
{% include JB/setup %}

### Introduction

### Link
'''
        buff+="""<a target="_blank"  href="{{ BASE_PATH }}/books/%s">%s</a>"""%(b, tlt)
        fp.write(buff)
        fp.close()

if __name__ == "__main__":
    main()
