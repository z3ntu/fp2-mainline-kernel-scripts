#!/bin/bash

pandoc fp2-hw-support.md --from gfm --to mediawiki |
    sed 's/{|/{| class="wikitable"/' |
    sed 's|{DSP}|<ref name="DSP"/>|' |
    sed 's|{CCI}|<ref name="CCI"/>|' |
    xsel --clipboard
