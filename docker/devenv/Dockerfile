############################################################
# CoCoNuT development dockerfile 
############################################################

# Set the base image to Debian testing
FROM debian:testing

LABEL maintainer "Zafeirakis Zafeirakopoulos" \
		version = "0.1" \
		description = "CoCoNuT development environment"

echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list
curl https://bazel.build/bazel-release.pub.gpg | apt-key add -

# Utilities
RUN apt-get update \
    &&  apt-get install --no-install-recommends -y \ 
        tar \
        xz-utils \
        lbzip2 \ 
        dialog \
        git \
        wget \
        ca-certificates \
    # Compilers and Interpreters
        gcc \
        g++ \
        python \ 
    # Build tools
        make \
        yasm \
        m4 \
        autoconf \
        libtool \
        cmake \
        python-pip \
	bazel \
    # Libraries
        libboost-dev \
        ssh \
	# Atom dependencies 
		gconf2 \
		gconf-service \
		libgtk2.0-0 \
		libnotify4 \ 
		libxtst6 \
		libnss3 \
		gvfs-bin \ 
		xdg-utils \
		libcap2 \
		libxss1 \
		libasound2 \
		libxkbfile1 \ 
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*



##############################################################################
###############################       Atom         ###########################
##############################################################################
 

RUN     wget https://github.com/atom/atom/releases/download/v1.17.2/atom-amd64.deb \
        && dpkg --install atom-amd64.deb  \
        && rm -rf atom-amd64.deb \
		&& pip install  setuptools \
		&& pip install  flake8 \
						flake8-docstrings \
    	&& apm install  linter \
				 		linter-ui-default \
						intentions \
						busy-signal \
						linter-flake8 \
						script 
	 


