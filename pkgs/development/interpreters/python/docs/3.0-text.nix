# This file was generated and will be overwritten by ./generate.sh

{ stdenv, fetchurl, lib }:

stdenv.mkDerivation rec {
  name = "python30-docs-text-3.0.1";
  src = fetchurl {
    url = http://docs.python.org/ftp/python/doc/3.0.1/python-3.0.1-docs-text.tar.bz2;
    sha256 = "12qlh9ywbnw50wk5siq7lmhr935dd16q3vjbii6gfv0g80b1byzx";
  };
  installPhase = ''
    mkdir -p $out/share/doc/python30
    cp -R ./ $out/share/doc/python30/text
  '';
  meta = {
    maintainers = [ lib.maintainers.chaoflow ];
  };
}
