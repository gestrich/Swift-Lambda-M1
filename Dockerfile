
#All of these build and deploy ok on M1 but the entry point fails:
#      fork/exec /var/task/bootstrap: exec format error Runtime.InvalidEntrypoint

#FROM swiftlang/swift:nightly-amazonlinux2
#FROM swift:5.6.1-amazonlinux2
#FROM swiftarm/swift:5.4.1-amazonlinux-2

#This builds/deploys and finds the entry-point if built with x86
#on M1, you get build error: failed to solve with frontend dockerfile.v0: failed to create LLB definition: no match for platform in manifest sha256:e9e727307b710e79ea577e867e0afbf794c727ca571278e7179c7375766bc3e6: not found
FROM swift:5.5.1-amazonlinux2

 RUN yum -y install \
     git \
     libuuid-devel \
     libicu-devel \
     libedit-devel \
     libxml2-devel \
     sqlite-devel \
     python-devel \
     ncurses-devel \
     curl-devel \
     openssl-devel \
     tzdata \
     libtool \
     jq \
     tar \
     zip

