## NEO430 Wrapper

This is a small "wrapper" project that encapsulates __[the NEO430 Processor](https://github.com/stnolting/neo430)__ by S. Nolting.

It provides the dependency files to build with __[the IPbus Builder Tool (ipbb)](https://github.com/ipbus/ipbb)__

## Building Example (for Digilent CMOD A7)

* Make working area
<pre style="color: blue">
mkdir build
cd build
</pre>
* Install and activate ipbb
<pre style="color: blue">
git clone https://github.com/ipbus/ipbb
pushd ipbb
git checkout -q tags/v0.5.2
source env.sh
popd
</pre>
* Set up an ipbb working area
<pre style="color: blue">
ipbb init work
cd work
</pre>
* Use ipbb to download NEO430 and wrapper projects
<pre style="color: blue">
ipbb add git https://github.com/stnolting/neo430.git
ipbb add git https://github.com/DavidCussans/neo430_wrapper.git
</pre>
* Create and setup the project
<pre style="color: blue">
ipbb proj create vivado neo430_wrapper_test  neo430_wrapper:projects/example -t top_digilent_cmod_a7.dep

cd proj/neo430_wrapper_test

# create Vivado project
ipbb vivado project
</pre>
* Either open Vivado project in GUI, or implement with the following:
<pre style="color: blue">
ipbb vivado impl
ipbb vivado bitfile
</pre>

## Running Example

Connect via USB. Connect with a terminal emulator ( e.g. minicom or miniterm.py ). Baud rate is (usually) 19200

## Building new software for the NEO430

Can either use the bootloader, or create a new neo430_application_image.vhd file in neo430_wrapper/rtl//core/neo430_application_image.vhd

### To create a new neo430_application_image.vhd file:

* First set the path to the MSP430 tools. For Bristol Linux machines execute the following:
<pre style="color: blue">
export PATH=$PATH:/software/CAD/ti/msp430_gcc/bin
</pre>

* Change directory to where the main.c and Makefile are located, then `make install`
<pre style="color: blue">
cd neo430_wrapper/sw/example/prime_numbers

make install
</pre>

* Finally, build Bitfile following the instructions in [Building Example (for Digilent CMOD A7)](#Building Example (for Digilent CMOD A7))
