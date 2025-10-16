#!/bin/bash

l=('CL' 'HC' 'J' 'K' 'SC' 'TC')
c=7 # 0-7-9
d='128m'
v='0.1.0.33.0'

dir=$PWD

cd out/TTF
for e in "${l[@]}"
do
	7za a -mx=$c -md="$d" -bb3 "$dir/SarasaStatic$e-TTF-$v.7z" SarasaStatic"$e"-*.ttf
	7za a -mx=$c -md="$d" -bb3 "$dir/SarasaStaticSlab$e-TTF-$v.7z" SarasaStaticSlab"$e"-*.ttf
done
cd "$dir";

cd out/TTF-Unhinted
for e in "${l[@]}"
do
	7za a -mx=$c -md="$d" -bb3 "$dir/SarasaStatic$e-TTF-Unhinted-$v.7z" SarasaStatic"$e"-*.ttf
	7za a -mx=$c -md="$d" -bb3 "$dir/SarasaStaticSlab$e-TTF-Unhinted-$v.7z" SarasaStaticSlab"$e"-*.ttf
done
cd "$dir";
