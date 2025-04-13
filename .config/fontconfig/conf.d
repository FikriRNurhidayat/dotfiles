<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>
  <match target="font">
    <edit name="antialias" mode="assign">
      <bool>true</bool>
    </edit>
  </match>

  <match target="font">
    <edit name="rgba" mode="assign">
      <const>rgb</const>
    </edit>
  </match>

  <match target="font">
    <edit name="hinting" mode="assign">
      <bool>true</bool>
    </edit>
    <edit name="hintstyle" mode="assign">
      <const>hintslight</const>
    </edit>
  </match>

  <match target="font">
    <edit name="lcdfilter" mode="assign">
      <const>lcddefault</const>
    </edit>
  </match>

  <match target="font">
    <edit name="embeddedbitmap" mode="assign">
      <bool>false</bool>
    </edit>
  </match>

  <alias>
    <family>sans-serif</family>
    <prefer>
      <family>Iosevka Aile</family>
      <family>Sarasa Mono C</family>
      <family>Sarasa Mono J</family>
      <family>Sarasa Mono K</family>
    </prefer>
  </alias>
  <alias>
    <family>serif</family>
    <prefer>
      <family>Iosevka Etoile</family>
      <family>Sarasa Mono Slab C</family>
      <family>Sarasa Mono Slab J</family>
      <family>Sarasa Mono Slab K</family>
    </prefer>
  </alias>
  <alias>
    <family>monospace</family>
    <prefer>
      <family>Iosevka Term Extended</family>
      <family>Sarasa Fixed C</family>
      <family>Sarasa Fixed J</family>
      <family>Sarasa Fixed K</family>
    </prefer>
  </alias>
</fontconfig>
