function install_python27 {
    wget http://www.python.org/ftp/python/2.7.11/Python-2.7.11.tgz
    tar xvfz Python-2.7.11.tgz
    cd Python-2.7.11
    ./configure --prefix=$HOME
    make
    make install
    cd ..
    rm -rf Python-2.7.11*
}

function install_appengine {
    wget https://storage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.36.zip
    unzip google_appengine_1.9.36.zip
    rm google_appengine_1.9.36.zip
    mv google_appengine ../lib/
    cd ../bin/
    ln -s ../lib/google_appengine/*.py .
}

function install_pil {
    wget http://effbot.org/downloads/Imaging-1.1.7.tar.gz
    tar xvfz Imaging-1.1.7.tar.gz
    cd Imaging-1.1.7
    python setup.py install
    cd ..
    rm -rf rm Imaging-1.1.7*
}

install_python27
install_appengine
install_pil
