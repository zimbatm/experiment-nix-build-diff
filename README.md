# What if nix-build told you why it's doing a rebuild?

This is an experiment to wrap nix with the wonderful `nix-diff` project.

`./nix-build-diff [nix-instantiate-options]`

## Demo

`$ ./nix-build-diff ./nixos-19.03.nix`
```
/home/zimbatm/foo/experiment-nix-build-diff/result.drv
- /nix/store/fh8gwqddfk0v7zzjky021gdjziw6b9fn-xxx.drv:{out}
+ /nix/store/5xxmnpc9vx09day5pmqa7pkg3vnxjgz1-hello-2.10.drv:{out}
• The builders do not match
    - /nix/store/7bkv33x88dc64yhjvfvjvh0fqyhlliwj-bash-4.4-p23/bin/bash
    + /nix/store/cinw572b38aln37glr0zb8lxwrgaffl4-bash-4.4-p23/bin/bash
• The set of input names do not match:
    + hello-2.10.tar.gz
• The input named `bash-4.4-p23` differs
  - /nix/store/mf0wgd0l2mzirjv55a9nf2wppnr8bb81-bash-4.4-p23.drv:{out}
  + /nix/store/1kircip4wskspsqqzxbmh6ss73iqh9ah-bash-4.4-p23.drv:{out}
  • The set of input names do not match:
      - bison-3.4.1
      + bison-3.3.2
  • The input named `bootstrap-stage4-gcc-wrapper-7.4.0` differs
    - /nix/store/37af1mss9yn8ywbmrpjgmhp3gwin1fj0-bootstrap-stage4-gcc-wrapper-7.4.0.drv:{out}
    + /nix/store/ill7hlfm72s9zgjs4jkazk8lf307nqch-bootstrap-stage4-gcc-wrapper-7.4.0.drv:{out}
    • The input named `binutils-wrapper-2.31.1` differs
      - /nix/store/2mxpgi6cjjrgk86ghvqn8vihlhh4lrah-binutils-wrapper-2.31.1.drv:{out}
      + /nix/store/bm6wpg46rap0dqfznb1bkhm815w4ci8r-binutils-wrapper-2.31.1.drv:{out}
      • The input named `binutils-2.31.1` differs
        - /nix/store/d5m6x82svh6acpdnpnh718m1d74k8yjl-binutils-2.31.1.drv:{info,man,out}
        + /nix/store/7b5z32ba8d6n8anmd3c9fv1mfa59h97b-binutils-2.31.1.drv:{info,man,out}
        • The set of input names do not match:
            - bison-3.4.1
            - gettext-0.19.8.1
            + bison-3.3.2
        • The input named `bootstrap-stage1-gcc-wrapper` differs
          - /nix/store/xcfz8fzlj0gd4x94piqbyrja9ixk3wdj-bootstrap-stage1-gcc-wrapper.drv:{out}
          + /nix/store/alxrkwvls16j8q7ipa5jvddnc89l9m4l-bootstrap-stage1-gcc-wrapper.drv:{out}
          • The input named `bootstrap-stage0-binutils-wrapper` differs
            - /nix/store/ary8pfy4cnb6i04wgyi5ir3fa0yz6qzv-bootstrap-stage0-binutils-wrapper.drv:{out}
            + /nix/store/nw3ckrrbn2p2l7xm3bbq6f7bh1c42v3g-bootstrap-stage0-binutils-wrapper.drv:{out}
            • The input named `bootstrap-stage0-glibc` differs
              - /nix/store/kvg3g461qg0wv24rvx53cl2z58zi6wql-bootstrap-stage0-glibc.drv:{out}
              + /nix/store/1xy8lasg87c2vpkjnj0fbys6ivzksc6w-bootstrap-stage0-glibc.drv:{out}
              • The input named `bootstrap-stage0-stdenv-linux` differs
                - /nix/store/kc0m2a3giizgcvgrz8y6maxmykm7yw4p-bootstrap-stage0-stdenv-linux.drv:{out}
                + /nix/store/jvzj3sqvxi6ym87zl4chxmgiqxsnpssx-bootstrap-stage0-stdenv-linux.drv:{out}
                • The set of input sources do not match:
                    - /nix/store/33sl3bqjcqzrdd9clgaad3ljlwyl1pkb-patch-shebangs.sh
                    - /nix/store/8f3fvc9q1916gqg4lkkhxaniw9f7pylv-setup.sh
                    + /nix/store/10x1sw17w0mkjbnm2yhl8cqzi09vmzhx-setup.sh
                    + /nix/store/6v3y7s4q4wd16hsw393gjpxvcf9159bv-patch-shebangs.sh
            • The input named `bootstrap-stage0-stdenv-linux` differs
              • These two derivations have already been compared
          • The input named `bootstrap-stage0-glibc` differs
            • These two derivations have already been compared
          • The input named `bootstrap-stage0-stdenv-linux` differs
            • These two derivations have already been compared
        • The input named `bootstrap-stage1-stdenv-linux` differs
          - /nix/store/wk9ib58zy76fijr6hxf3y29y3xs48fxx-bootstrap-stage1-stdenv-linux.drv:{out}
          + /nix/store/4kcv6l4w2rdvpyz2ml837sm9xlawlbhk-bootstrap-stage1-stdenv-linux.drv:{out}
          • The input named `bootstrap-stage1-gcc-wrapper` differs
            • These two derivations have already been compared
        • The input named `zlib-1.2.11` differs
          - /nix/store/mwnkr4q65x6qp8gjj6b1271f6xn66nyn-zlib-1.2.11.drv:{dev}
          + /nix/store/37cc34z6nlfm9b8y4i0yll9jr1prh66p-zlib-1.2.11.drv:{dev}
          • The input named `bootstrap-stage1-stdenv-linux` differs
            • These two derivations have already been compared
      • The input named `bootstrap-stage1-stdenv-linux` differs
        - /nix/store/c87cqv1i2hbcj8h4afab2dn4b255v4w2-bootstrap-stage1-stdenv-linux.drv:{out}
        + /nix/store/g8lwaa1h96fapkfpg60l2mr134szi624-bootstrap-stage1-stdenv-linux.drv:{out}
        • The set of input sources do not match:
            - /nix/store/33sl3bqjcqzrdd9clgaad3ljlwyl1pkb-patch-shebangs.sh
            - /nix/store/8f3fvc9q1916gqg4lkkhxaniw9f7pylv-setup.sh
            + /nix/store/10x1sw17w0mkjbnm2yhl8cqzi09vmzhx-setup.sh
            + /nix/store/6v3y7s4q4wd16hsw393gjpxvcf9159bv-patch-shebangs.sh
      • The input named `expand-response-params` differs
        - /nix/store/x6xavfn69cdmc0cszhcnqg0gq9i2lzg5-expand-response-params.drv:{out}
        + /nix/store/6ik9g0nz2hxyip271xkcdap78r8d11fc-expand-response-params.drv:{out}
        • The input named `bootstrap-stage1-stdenv-linux` differs
          • These two derivations have already been compared
      • The input named `glibc-2.27` differs
        - /nix/store/jswx2b2qrx6kb2mlzwjk5pklnisi3gc1-glibc-2.27.drv:{bin,dev,out}
        + /nix/store/j9q614bgqlhbmrzqpq8rhlyam3ylp4c8-glibc-2.27.drv:{bin,dev,out}
        • The set of input names do not match:
            - bison-3.4.1
            + bison-3.3.2
        • The input named `bootstrap-stage0-glibc` differs
          • These two derivations have already been compared
        • The input named `bootstrap-stage2-gcc-wrapper` differs
          - /nix/store/d8f0qvqbslbpjanxd0jqb9k04i3ihqpb-bootstrap-stage2-gcc-wrapper.drv:{out}
          + /nix/store/yawnkyhmzjyz4629p5bydjbldspm6vzc-bootstrap-stage2-gcc-wrapper.drv:{out}
          • The input named `binutils-wrapper-2.31.1` differs
            - /nix/store/lf6dcgfk7ia12p7ifx7653nqibw3ayix-binutils-wrapper-2.31.1.drv:{out}
            + /nix/store/v3abs1pkaq9c466m964cigg774ppirdd-binutils-wrapper-2.31.1.drv:{out}
            • The input named `binutils-2.31.1` differs
              • These two derivations have already been compared
            • The input named `bootstrap-stage0-glibc` differs
              • These two derivations have already been compared
            • The input named `bootstrap-stage1-stdenv-linux` differs
              • These two derivations have already been compared
            • The input named `expand-response-params` differs
              • These two derivations have already been compared
          • The input named `bootstrap-stage0-glibc` differs
            • These two derivations have already been compared
          • The input named `bootstrap-stage0-stdenv-linux` differs
            • These two derivations have already been compared
          • The input named `expand-response-params` differs
            • These two derivations have already been compared
        • The input named `bootstrap-stage2-stdenv-linux` differs
          - /nix/store/zm4qk57nnl5461djgdd4k6yadik9v179-bootstrap-stage2-stdenv-linux.drv:{out}
          + /nix/store/gbv476yr50rbl80rsdanfz4a3s3cad5w-bootstrap-stage2-stdenv-linux.drv:{out}
          • The input named `bootstrap-stage2-gcc-wrapper` differs
            • These two derivations have already been compared
        • The input named `linux-headers-4.19.16` differs
          - /nix/store/hj246ag4jaf9zwj0x7fsnq1c6frkmnbh-linux-headers-4.19.16.drv:{out}
          + /nix/store/3ixypiqybv0f4zfcv1qhdn4kald479py-linux-headers-4.19.16.drv:{out}
          • The set of input names do not match:
              - perl-5.28.2
              + perl-5.28.1
          • The input named `bootstrap-stage2-gcc-wrapper` differs
            • These two derivations have already been compared
          • The input named `bootstrap-stage2-stdenv-linux` differs
            - /nix/store/2s37vdhnlpldglnskdvp9bq2f8byhsqf-bootstrap-stage2-stdenv-linux.drv:{out}
            + /nix/store/9l0216i49z6k3r0pn164c2bqd8i73x57-bootstrap-stage2-stdenv-linux.drv:{out}
            • The set of input sources do not match:
                - /nix/store/33sl3bqjcqzrdd9clgaad3ljlwyl1pkb-patch-shebangs.sh
                - /nix/store/8f3fvc9q1916gqg4lkkhxaniw9f7pylv-setup.sh
                + /nix/store/10x1sw17w0mkjbnm2yhl8cqzi09vmzhx-setup.sh
                + /nix/store/6v3y7s4q4wd16hsw393gjpxvcf9159bv-patch-shebangs.sh
    • The input named `bootstrap-stage0-stdenv-linux` differs
      • These two derivations have already been compared
    • The input named `expand-response-params` differs
      - /nix/store/4mgcj4hwblm3q4ndznjgkf5wldah3ava-expand-response-params.drv:{out}
      + /nix/store/j9nyjdmw2q50pn11vy5y381ifbvpgfxd-expand-response-params.drv:{out}
      • The input named `bootstrap-stage3-stdenv-linux` differs
        - /nix/store/8rzlqx9j6ws4lgnfsyh9dq18ilahkbgc-bootstrap-stage3-stdenv-linux.drv:{out}
        + /nix/store/471dnz7cw5z7qpjfqj95ybablljid9l3-bootstrap-stage3-stdenv-linux.drv:{out}
        • The input named `bootstrap-stage3-gcc-wrapper` differs
          - /nix/store/qfcrrz0avn2p86qyp1q9lfama31ry8mi-bootstrap-stage3-gcc-wrapper.drv:{out}
          + /nix/store/i1z4rl0zgrcyh1gaq1z76l7g90g8gpzd-bootstrap-stage3-gcc-wrapper.drv:{out}
          • The input named `binutils-wrapper-2.31.1` differs
            • These two derivations have already been compared
          • The input named `bootstrap-stage0-stdenv-linux` differs
            • These two derivations have already been compared
          • The input named `expand-response-params` differs
            - /nix/store/0rxl02i8jlav5ccv73pfxg6r02v7ik1z-expand-response-params.drv:{out}
            + /nix/store/k37848dy67nkwlwjglrj2cafqw5zdx53-expand-response-params.drv:{out}
            • The input named `bootstrap-stage2-stdenv-linux` differs
              • These two derivations have already been compared
          • The input named `glibc-2.27` differs
            • These two derivations have already been compared
        • The input named `patchelf-0.9` differs
          - /nix/store/ccmppjjfxpd32kcw9x5va6rh77ymp8ym-patchelf-0.9.drv:{out}
          + /nix/store/zmlk2qm7b8l4jz8ck1qsiwxvzg5m9pmr-patchelf-0.9.drv:{out}
          • The input named `bootstrap-stage2-stdenv-linux` differs
            • These two derivations have already been compared
    • The input named `gcc-7.4.0` differs
      - /nix/store/ndifb254jlc1n81cnprkglz4xcb19qly-gcc-7.4.0.drv:{info,lib,man,out}
      + /nix/store/dpi3kg3aqgfdqryanzn0wfl40igzzymx-gcc-7.4.0.drv:{info,lib,man,out}
      • The set of input names do not match:
          - perl-5.28.2
          + perl-5.28.1
      • The input named `binutils-wrapper-2.31.1` differs
        • These two derivations have already been compared
      • The input named `bootstrap-stage3-gcc-wrapper` differs
        • These two derivations have already been compared
      • The input named `bootstrap-stage3-stdenv-linux` differs
        • These two derivations have already been compared
      • The input named `gettext-0.19.8.1` differs
        - /nix/store/sq86shx0695f01xq1cq8jv8n90mz4kgk-gettext-0.19.8.1.drv:{out}
        + /nix/store/sqpr9qqafndkkq7ncin0vm2fbndnjb0z-gettext-0.19.8.1.drv:{out}
        • The set of input names do not match:
            - CVE-2018-18751.patch
            - autoconf-2.69
            - automake-1.15
            - bison-3.4.1
        • The input named `bootstrap-stage3-stdenv-linux` differs
          • These two derivations have already been compared
        • The input named `xz-5.2.4` differs
          - /nix/store/96g9mrk7305dbplzmvsnxn1hmqrhg2yk-xz-5.2.4.drv:{bin,dev}
          + /nix/store/7bri6hzx0i2v5dmw0ssm153kkq1frl1g-xz-5.2.4.drv:{bin,dev}
          • The input named `bootstrap-stage3-stdenv-linux` differs
            • These two derivations have already been compared
      • The input named `glibc-2.27` differs
        - /nix/store/jswx2b2qrx6kb2mlzwjk5pklnisi3gc1-glibc-2.27.drv:{dev,out}
        + /nix/store/j9q614bgqlhbmrzqpq8rhlyam3ylp4c8-glibc-2.27.drv:{dev,out}
        • The set of input names do not match:
            - bison-3.4.1
            + bison-3.3.2
        • The input named `bootstrap-stage0-glibc` differs
          • These two derivations have already been compared
        • The input named `bootstrap-stage2-gcc-wrapper` differs
          • These two derivations have already been compared
        • The input named `bootstrap-stage2-stdenv-linux` differs
          • These two derivations have already been compared
        • The input named `linux-headers-4.19.16` differs
          • These two derivations have already been compared
      • The input named `gmp-6.1.2` differs
        - /nix/store/p2qplj22b0inansppjxbvr6z6jsgdhw9-gmp-6.1.2.drv:{dev,out}
        + /nix/store/88chwwqv3ifnc39wzlmf7rici20xxjqv-gmp-6.1.2.drv:{dev,out}
        • The input named `bootstrap-stage3-gcc-wrapper` differs
          • These two derivations have already been compared
        • The input named `bootstrap-stage3-stdenv-linux` differs
          • These two derivations have already been compared
        • The input named `gnum4-1.4.18` differs
          - /nix/store/kx4ac0gl69m7cx3ki9drj33jjv1y7ck6-gnum4-1.4.18.drv:{out}
          + /nix/store/2scfrhfm933g029pxgim6091zqlsj51f-gnum4-1.4.18.drv:{out}
          • The input named `bootstrap-stage1-stdenv-linux` differs
            • These two derivations have already been compared
      • The input named `isl-0.17.1` differs
        - /nix/store/pd7jmqmrcms33j3w4cz8vw5bkyrdv6ij-isl-0.17.1.drv:{out}
        + /nix/store/a63q3266423lqpx7ajxzqhrjaq71znlz-isl-0.17.1.drv:{out}
        • The input named `bootstrap-stage3-stdenv-linux` differs
          • These two derivations have already been compared
        • The input named `gmp-6.1.2` differs
          - /nix/store/p2qplj22b0inansppjxbvr6z6jsgdhw9-gmp-6.1.2.drv:{dev}
          + /nix/store/88chwwqv3ifnc39wzlmf7rici20xxjqv-gmp-6.1.2.drv:{dev}
          • The input named `bootstrap-stage3-gcc-wrapper` differs
            • These two derivations have already been compared
          • The input named `bootstrap-stage3-stdenv-linux` differs
            • These two derivations have already been compared
          • The input named `gnum4-1.4.18` differs
            • These two derivations have already been compared
      • The input named `libelf-0.8.13` differs
        - /nix/store/y829rii7kx252z5g54d1yg33bip6zwgy-libelf-0.8.13.drv:{out}
        + /nix/store/wd5abz5na90llq02q7397hn29z26lhj4-libelf-0.8.13.drv:{out}
        • The input named `bootstrap-stage3-stdenv-linux` differs
          • These two derivations have already been compared
        • The input named `gettext-0.19.8.1` differs
          • These two derivations have already been compared
      • The input named `libmpc-1.1.0` differs
        - /nix/store/sqydrq06z433v45fwknrz8iv9jxnzhgz-libmpc-1.1.0.drv:{out}
        + /nix/store/rprn2brgkmxg10b21vq8ffq86d4xnq23-libmpc-1.1.0.drv:{out}
        • The input named `bootstrap-stage3-stdenv-linux` differs
          • These two derivations have already been compared
        • The input named `gmp-6.1.2` differs
          • These two derivations have already been compared
        • The input named `mpfr-4.0.2` differs
          - /nix/store/c4ny3sj4khhvxi3qgb724zjn10a4x34l-mpfr-4.0.2.drv:{dev}
          + /nix/store/cj579nldycj5abwm8hx3801p14c4d2j3-mpfr-4.0.2.drv:{dev}
          • The input named `bootstrap-stage3-stdenv-linux` differs
            • These two derivations have already been compared
          • The input named `gmp-6.1.2` differs
            • These two derivations have already been compared
      • The input named `mpfr-4.0.2` differs
        - /nix/store/c4ny3sj4khhvxi3qgb724zjn10a4x34l-mpfr-4.0.2.drv:{dev,out}
        + /nix/store/cj579nldycj5abwm8hx3801p14c4d2j3-mpfr-4.0.2.drv:{dev,out}
        • The input named `bootstrap-stage3-stdenv-linux` differs
          • These two derivations have already been compared
        • The input named `gmp-6.1.2` differs
          • These two derivations have already been compared
      • The input named `texinfo-6.5` differs
        - /nix/store/p36cdgymx3kp6avy81qhxpz8cn7sgci0-texinfo-6.5.drv:{out}
        + /nix/store/4ghvnpxm16lyqd32kyq7pa72nr8ndxid-texinfo-6.5.drv:{out}
        • The set of input names do not match:
            - perl-5.28.2
            + perl-5.28.1
        • The input named `bootstrap-stage3-gcc-wrapper` differs
          • These two derivations have already been compared
        • The input named `bootstrap-stage3-stdenv-linux` differs
          • These two derivations have already been compared
        • The input named `xz-5.2.4` differs
          - /nix/store/96g9mrk7305dbplzmvsnxn1hmqrhg2yk-xz-5.2.4.drv:{bin}
          + /nix/store/7bri6hzx0i2v5dmw0ssm153kkq1frl1g-xz-5.2.4.drv:{bin}
          • The input named `bootstrap-stage3-stdenv-linux` differs
            • These two derivations have already been compared
      • The input named `which-2.21` differs
        - /nix/store/qfd6ppsls995dj0l82c7226dmb8m85pz-which-2.21.drv:{out}
        + /nix/store/0r6z9g6rlm8f4ck979wr0l5yy7ppplxj-which-2.21.drv:{out}
        • The input named `bootstrap-stage3-stdenv-linux` differs
          • These two derivations have already been compared
      • The input named `zlib-1.2.11` differs
        - /nix/store/53nhrpwwl91jgjk3s6n8j0x7vnniifxl-zlib-1.2.11.drv:{dev,out}
        + /nix/store/4fxxxk7z599mqamkkfc1fwx1dam8l6xv-zlib-1.2.11.drv:{dev,out}
        • The input named `bootstrap-stage3-stdenv-linux` differs
          • These two derivations have already been compared
    • The input named `glibc-2.27` differs
      • These two derivations have already been compared
  • The input named `bootstrap-stage4-stdenv-linux` differs
    - /nix/store/1ry1mg2casizjm18fkzl57dy2mfhgxwk-bootstrap-stage4-stdenv-linux.drv:{out}
    + /nix/store/i3l2dg8bgj7qpw6dqpv51fl4bgpc3n1m-bootstrap-stage4-stdenv-linux.drv:{out}
    • The input named `bootstrap-stage4-gcc-wrapper-7.4.0` differs
      • These two derivations have already been compared
    • The input named `patchelf-0.9` differs
      • These two derivations have already been compared
    • The input named `xz-5.2.4` differs
      • These two derivations have already been compared
• The input named `stdenv-linux` differs
  - /nix/store/3d547md672sl43r4rg1x7g20vcagwqa0-stdenv-linux.drv:{out}
  + /nix/store/fjhmb2fr7fx5azg89ldqywkmj5604z08-stdenv-linux.drv:{out}
  • The builders do not match
      - /nix/store/7bkv33x88dc64yhjvfvjvh0fqyhlliwj-bash-4.4-p23/bin/bash
      + /nix/store/cinw572b38aln37glr0zb8lxwrgaffl4-bash-4.4-p23/bin/bash
  • The set of input names do not match:
      - coreutils-8.31
      - gnutar-1.32
      - pcre-8.43
      + coreutils-8.30
      + gnutar-1.31
      + pcre-8.42
  • The input named `acl-2.2.53` differs
    - /nix/store/0h4zrvajnw0w0wmfcvddhniw4i3nzpa2-acl-2.2.53.drv:{out}
    + /nix/store/4lvbhxxh5fjd4cg4yzadp9p8dmg6hdpv-acl-2.2.53.drv:{out}
    • The input named `attr-2.4.48` differs
      - /nix/store/63gwhqql3rad0h9nmkc26d04wcl3n5by-attr-2.4.48.drv:{dev}
      + /nix/store/0nrviji5lbjlam2ls0hrrdx078vprmvn-attr-2.4.48.drv:{dev}
      • The input named `bootstrap-stage4-stdenv-linux` differs
        • These two derivations have already been compared
      • The input named `gettext-0.19.8.1` differs
        • These two derivations have already been compared
    • The input named `bootstrap-stage4-stdenv-linux` differs
      • These two derivations have already been compared
    • The input named `gettext-0.19.8.1` differs
      • These two derivations have already been compared
  • The input named `attr-2.4.48` differs
    - /nix/store/63gwhqql3rad0h9nmkc26d04wcl3n5by-attr-2.4.48.drv:{out}
    + /nix/store/0nrviji5lbjlam2ls0hrrdx078vprmvn-attr-2.4.48.drv:{out}
    • The input named `bootstrap-stage4-stdenv-linux` differs
      • These two derivations have already been compared
    • The input named `gettext-0.19.8.1` differs
      • These two derivations have already been compared
  • The input named `bash-4.4-p23` differs
    • These two derivations have already been compared
  • The input named `binutils-2.31.1` differs
    - /nix/store/xymrb3r5xxf50yar7c82p6mf3ag9whp4-binutils-2.31.1.drv:{out}
    + /nix/store/7ackllpq1z5rd724s41b6fl76g8a8104-binutils-2.31.1.drv:{out}
    • The set of input names do not match:
        - bison-3.4.1
        - gettext-0.19.8.1
        + bison-3.3.2
    • The input named `bootstrap-stage4-gcc-wrapper-7.4.0` differs
      • These two derivations have already been compared
    • The input named `bootstrap-stage4-stdenv-linux` differs
      • These two derivations have already been compared
    • The input named `zlib-1.2.11` differs
      - /nix/store/53nhrpwwl91jgjk3s6n8j0x7vnniifxl-zlib-1.2.11.drv:{dev}
      + /nix/store/4fxxxk7z599mqamkkfc1fwx1dam8l6xv-zlib-1.2.11.drv:{dev}
      • The input named `bootstrap-stage3-stdenv-linux` differs
        • These two derivations have already been compared
  • The input named `binutils-wrapper-2.31.1` differs
    - /nix/store/bs0w5jfv3wdvislsns9c3l1vbb6xibq8-binutils-wrapper-2.31.1.drv:{out}
    + /nix/store/1j2mkbcf3svc0ql4kb4lhacpqdzjlsgd-binutils-wrapper-2.31.1.drv:{out}
    • The set of input names do not match:
        - coreutils-8.31
        + coreutils-8.30
    • The input named `bash-4.4-p23` differs
      • These two derivations have already been compared
    • The input named `binutils-2.31.1` differs
      - /nix/store/xymrb3r5xxf50yar7c82p6mf3ag9whp4-binutils-2.31.1.drv:{info,man,out}
      + /nix/store/7ackllpq1z5rd724s41b6fl76g8a8104-binutils-2.31.1.drv:{info,man,out}
      • The set of input names do not match:
          - bison-3.4.1
          - gettext-0.19.8.1
          + bison-3.3.2
      • The input named `bootstrap-stage4-gcc-wrapper-7.4.0` differs
        • These two derivations have already been compared
      • The input named `bootstrap-stage4-stdenv-linux` differs
        • These two derivations have already been compared
      • The input named `zlib-1.2.11` differs
        • These two derivations have already been compared
    • The input named `bootstrap-stage4-stdenv-linux` differs
      - /nix/store/38bp6ic232kzd64m864jrxxlrp6z6nhn-bootstrap-stage4-stdenv-linux.drv:{out}
      + /nix/store/wd2f7lckyx7s2ybcxz3q1vwjdv244ax6-bootstrap-stage4-stdenv-linux.drv:{out}
      • The input named `patchelf-0.9` differs
        • These two derivations have already been compared
      • The input named `xz-5.2.4` differs
        • These two derivations have already been compared
    • The input named `expand-response-params` differs
      • These two derivations have already been compared
    • The input named `glibc-2.27` differs
      • These two derivations have already been compared
    • The input named `gnugrep-3.3` differs
      - /nix/store/gp8zhmn1h69zpy3zv3kfjdhr1yhcd7v0-gnugrep-3.3.drv:{out}
      + /nix/store/asdqcb96s1wmjqbffldd23b27ms1ghv0-gnugrep-3.3.drv:{out}
      • The set of input names do not match:
          - pcre-8.43
          - perl-5.28.2
          + pcre-8.42
          + perl-5.28.1
      • The input named `bootstrap-stage4-stdenv-linux` differs
        • These two derivations have already been compared
      • The input named `glibc-iconv-2.27` differs
        - /nix/store/052a4b13sza8ky9dgzjsrvszs6bbfc8s-glibc-iconv-2.27.drv:{out}
        + /nix/store/awl436ngcvcvrhl7nh5j1wwx0c7jh42m-glibc-iconv-2.27.drv:{out}
        • The input named `bootstrap-stage4-stdenv-linux` differs
          • These two derivations have already been compared
        • The input named `glibc-2.27` differs
          - /nix/store/jswx2b2qrx6kb2mlzwjk5pklnisi3gc1-glibc-2.27.drv:{dev}
          + /nix/store/j9q614bgqlhbmrzqpq8rhlyam3ylp4c8-glibc-2.27.drv:{dev}
          • The set of input names do not match:
              - bison-3.4.1
              + bison-3.3.2
          • The input named `bootstrap-stage0-glibc` differs
            • These two derivations have already been compared
          • The input named `bootstrap-stage2-gcc-wrapper` differs
            • These two derivations have already been compared
          • The input named `bootstrap-stage2-stdenv-linux` differs
            • These two derivations have already been compared
          • The input named `linux-headers-4.19.16` differs
            • These two derivations have already been compared
  • The input named `bzip2-1.0.6.0.1` differs
    - /nix/store/r8a3dpbx3p027vpbjaj1bwx56m0vxv2i-bzip2-1.0.6.0.1.drv:{bin,out}
    + /nix/store/ajm1n9y8cm6zgpq73ziz932911z33cr5-bzip2-1.0.6.0.1.drv:{bin,out}
    • The input named `bootstrap-stage4-stdenv-linux` differs
      • These two derivations have already been compared
  • The input named `diffutils-3.7` differs
    - /nix/store/p0dp856kil9q326yynhdbba3wm28hs6w-diffutils-3.7.drv:{out}
    + /nix/store/j7804zl9gvmd1r9f2kl1axndncmyg7h4-diffutils-3.7.drv:{out}
    • The set of input names do not match:
        - coreutils-8.31
        + coreutils-8.30
    • The input named `bootstrap-stage4-stdenv-linux` differs
      • These two derivations have already been compared
    • The input named `xz-5.2.4` differs
      - /nix/store/vqripy2ras9jbbx6ddhn87xxhy5hpp9i-xz-5.2.4.drv:{bin}
      + /nix/store/2a0xw076bwsmh73y6kpcb17di384jifc-xz-5.2.4.drv:{bin}
      • The input named `bootstrap-stage4-stdenv-linux` differs
        • These two derivations have already been compared
  • The input named `ed-1.15` differs
    - /nix/store/z1n1di8879jzd11i1wbrn6kifsz9hj7a-ed-1.15.drv:{out}
    + /nix/store/0dw6v7x9s0rhd1v4h19sh2hsvahyhqw3-ed-1.15.drv:{out}
    • The input named `bootstrap-stage4-stdenv-linux` differs
      • These two derivations have already been compared
    • The input named `lzip-1.21` differs
      - /nix/store/sc140n0hd64b0f10dzqiihbrbhqnqdnw-lzip-1.21.drv:{out}
      + /nix/store/x73mn3z55z66rfc5gp6slwq1zvs7xj5f-lzip-1.21.drv:{out}
      • The input named `bootstrap-stage4-stdenv-linux` differs
        • These two derivations have already been compared
      • The input named `texinfo-6.5` differs
        • These two derivations have already been compared
  • The input named `expand-response-params` differs
    • These two derivations have already been compared
  • The input named `findutils-4.6.0` differs
    - /nix/store/b09d25n7dvp0yxl0sxhx8vfrp7q4lm9j-findutils-4.6.0.drv:{out}
    + /nix/store/nr1638s0ffa74yz8qbsf1zf6x8f9a0h9-findutils-4.6.0.drv:{out}
    • The set of input names do not match:
        - coreutils-8.31
        + coreutils-8.30
    • The input named `bootstrap-stage4-stdenv-linux` differs
      • These two derivations have already been compared
  • The input named `gawk-4.2.1` differs
    - /nix/store/khy1l9dv2nygb25yicvbjw1rxwb3nrlc-gawk-4.2.1.drv:{out}
    + /nix/store/b6cfxck0zj4f956r6g3m76m10h8li78s-gawk-4.2.1.drv:{out}
    • The input named `bootstrap-stage4-stdenv-linux` differs
      • These two derivations have already been compared
  • The input named `gcc-7.4.0` differs
    - /nix/store/ndifb254jlc1n81cnprkglz4xcb19qly-gcc-7.4.0.drv:{lib,out}
    + /nix/store/dpi3kg3aqgfdqryanzn0wfl40igzzymx-gcc-7.4.0.drv:{lib,out}
    • The set of input names do not match:
        - perl-5.28.2
        + perl-5.28.1
    • The input named `binutils-wrapper-2.31.1` differs
      • These two derivations have already been compared
    • The input named `bootstrap-stage3-gcc-wrapper` differs
      • These two derivations have already been compared
    • The input named `bootstrap-stage3-stdenv-linux` differs
      • These two derivations have already been compared
    • The input named `gettext-0.19.8.1` differs
      • These two derivations have already been compared
    • The input named `glibc-2.27` differs
      • These two derivations have already been compared
    • The input named `gmp-6.1.2` differs
      • These two derivations have already been compared
    • The input named `isl-0.17.1` differs
      • These two derivations have already been compared
    • The input named `libelf-0.8.13` differs
      • These two derivations have already been compared
    • The input named `libmpc-1.1.0` differs
      • These two derivations have already been compared
    • The input named `mpfr-4.0.2` differs
      • These two derivations have already been compared
    • The input named `texinfo-6.5` differs
      • These two derivations have already been compared
    • The input named `which-2.21` differs
      • These two derivations have already been compared
    • The input named `zlib-1.2.11` differs
      • These two derivations have already been compared
  • The input named `gcc-wrapper-7.4.0` differs
    - /nix/store/psr32sk2dlwacv43qnnxnsvbacz5wp8p-gcc-wrapper-7.4.0.drv:{out}
    + /nix/store/dyxdjxyszmlz29mb0jr9qkncj5l41dai-gcc-wrapper-7.4.0.drv:{out}
    • The set of input names do not match:
        - coreutils-8.31
        + coreutils-8.30
    • The input named `bash-4.4-p23` differs
      • These two derivations have already been compared
    • The input named `binutils-wrapper-2.31.1` differs
      • These two derivations have already been compared
    • The input named `bootstrap-stage4-stdenv-linux` differs
      • These two derivations have already been compared
    • The input named `expand-response-params` differs
      • These two derivations have already been compared
    • The input named `gcc-7.4.0` differs
      • These two derivations have already been compared
    • The input named `glibc-2.27` differs
      • These two derivations have already been compared
    • The input named `gnugrep-3.3` differs
      • These two derivations have already been compared
  • The input named `glibc-2.27` differs
    • These two derivations have already been compared
  • The input named `gnugrep-3.3` differs
    • These two derivations have already been compared
  • The input named `gnumake-4.2.1` differs
    - /nix/store/5fkbh96n8k8zq9z6l82z6rgb4c87kvfs-gnumake-4.2.1.drv:{out}
    + /nix/store/cd6pa0z8cmyhvbmjs8blf257anyy55cr-gnumake-4.2.1.drv:{out}
    • The input named `bootstrap-stage4-stdenv-linux` differs
      • These two derivations have already been compared
  • The input named `gnused-4.7` differs
    - /nix/store/h0gyqmddnx7s03kx705xy1fvsmqpg00p-gnused-4.7.drv:{out}
    + /nix/store/zl7xpli5wij34i8b3640n34sxkqwq14h-gnused-4.7.drv:{out}
    • The set of input names do not match:
        - perl-5.28.2
        + perl-5.28.1
    • The input named `bootstrap-stage4-stdenv-linux` differs
      • These two derivations have already been compared
  • The input named `gzip-1.10` differs
    - /nix/store/nv15300h9s1ywa59d0ldnh8qlhfygz1h-gzip-1.10.drv:{out}
    + /nix/store/n79xj2q8b6ykcn9jr1b4k88mk073a7gx-gzip-1.10.drv:{out}
    • The input named `bootstrap-stage4-stdenv-linux` differs
      • These two derivations have already been compared
    • The input named `xz-5.2.4` differs
      • These two derivations have already been compared
  • The input named `linux-headers-4.19.16` differs
    • These two derivations have already been compared
  • The input named `patch-2.7.6` differs
    - /nix/store/rpxmxhb1x9a1x2ibp4vcg93cbq4yp980-patch-2.7.6.drv:{out}
    + /nix/store/qnmj5w2jbaxb9pf1wh9zzc3z731pliy0-patch-2.7.6.drv:{out}
    • The input named `bootstrap-stage4-stdenv-linux` differs
      • These two derivations have already been compared
    • The input named `ed-1.15` differs
      • These two derivations have already been compared
    • The input named `hook` differs
      - /nix/store/7fz00v4bxg3vl98lyabrhcayhyyifwhm-hook.drv:{out}
      + /nix/store/bi3ar3p7s06ra4622hqgyjhjn9sh32h9-hook.drv:{out}
      • The input named `autoconf-2.69` differs
        - /nix/store/kjziskx52swvn8sca5bl0rf1dxkz8vmm-autoconf-2.69.drv:{out}
        + /nix/store/wvkgn2y3295w2gga2vx7yi6xlzj7749y-autoconf-2.69.drv:{out}
        • The set of input names do not match:
            - perl-5.28.2
            + perl-5.28.1
        • The input named `bootstrap-stage4-stdenv-linux` differs
          • These two derivations have already been compared
        • The input named `gnum4-1.4.18` differs
          • These two derivations have already been compared
      • The input named `automake-1.16.1` differs
        - /nix/store/1qs2jy25m2n7lbn9iwh9gc9pw6k1kkld-automake-1.16.1.drv:{out}
        + /nix/store/4sqjr402ngnjv21pd7qd01bbhaz0ibdg-automake-1.16.1.drv:{out}
        • The set of input names do not match:
            - perl-5.28.2
            + perl-5.28.1
        • The input named `autoconf-2.69` differs
          • These two derivations have already been compared
        • The input named `bootstrap-stage4-stdenv-linux` differs
          • These two derivations have already been compared
      • The input named `bootstrap-stage4-stdenv-linux` differs
        • These two derivations have already been compared
      • The input named `gettext-0.19.8.1` differs
        • These two derivations have already been compared
      • The input named `libtool-2.4.6` differs
        - /nix/store/490ag87wx2i936w7dm5hggxy5f53zwr0-libtool-2.4.6.drv:{out}
        + /nix/store/w3g3nn7m8nnsd7mjr50b3cp8jigb71fz-libtool-2.4.6.drv:{out}
        • The set of input names do not match:
            - help2man-1.47.10
            - perl-5.28.2
            + help2man-1.47.8
            + perl-5.28.1
        • The input named `bootstrap-stage4-stdenv-linux` differs
          • These two derivations have already been compared
        • The input named `gnum4-1.4.18` differs
          • These two derivations have already been compared
  • The input named `patchelf-0.9` differs
    - /nix/store/v96rf9mx9a1inpln1yjr27kfpnmx9cql-patchelf-0.9.drv:{out}
    + /nix/store/xd6whirm4r913frvvgp6bpljnl1g65pg-patchelf-0.9.drv:{out}
    • The input named `bootstrap-stage4-stdenv-linux` differs
      • These two derivations have already been compared
  • The input named `xz-5.2.4` differs
    - /nix/store/vqripy2ras9jbbx6ddhn87xxhy5hpp9i-xz-5.2.4.drv:{bin,out}
    + /nix/store/2a0xw076bwsmh73y6kpcb17di384jifc-xz-5.2.4.drv:{bin,out}
    • The input named `bootstrap-stage4-stdenv-linux` differs
      • These two derivations have already been compared
  • The input named `zlib-1.2.11` differs
    - /nix/store/53nhrpwwl91jgjk3s6n8j0x7vnniifxl-zlib-1.2.11.drv:{out}
    + /nix/store/4fxxxk7z599mqamkkfc1fwx1dam8l6xv-zlib-1.2.11.drv:{out}
    • The input named `bootstrap-stage3-stdenv-linux` differs
      • These two derivations have already been compared
/home/zimbatm/foo/experiment-nix-build-diff/result
```
`$ ./nix-build-diff ./nixos-unstable.nix`
```
/home/zimbatm/foo/experiment-nix-build-diff/result.drv
- /nix/store/5xxmnpc9vx09day5pmqa7pkg3vnxjgz1-hello-2.10.drv:{out}
+ /nix/store/mlc9zjwprjp1a4sz3ry94vrk70c4k8lb-hello-2.10.drv:{out}
• The builders do not match
    - /nix/store/cinw572b38aln37glr0zb8lxwrgaffl4-bash-4.4-p23/bin/bash
    + /nix/store/7bkv33x88dc64yhjvfvjvh0fqyhlliwj-bash-4.4-p23/bin/bash
• The input named `bash-4.4-p23` differs
  - /nix/store/1kircip4wskspsqqzxbmh6ss73iqh9ah-bash-4.4-p23.drv:{out}
  + /nix/store/mf0wgd0l2mzirjv55a9nf2wppnr8bb81-bash-4.4-p23.drv:{out}
  • The set of input names do not match:
      - bison-3.3.2
      + bison-3.4.1
  • The input named `bootstrap-stage4-gcc-wrapper-7.4.0` differs
    - /nix/store/ill7hlfm72s9zgjs4jkazk8lf307nqch-bootstrap-stage4-gcc-wrapper-7.4.0.drv:{out}
    + /nix/store/37af1mss9yn8ywbmrpjgmhp3gwin1fj0-bootstrap-stage4-gcc-wrapper-7.4.0.drv:{out}
    • The input named `binutils-wrapper-2.31.1` differs
      - /nix/store/bm6wpg46rap0dqfznb1bkhm815w4ci8r-binutils-wrapper-2.31.1.drv:{out}
      + /nix/store/2mxpgi6cjjrgk86ghvqn8vihlhh4lrah-binutils-wrapper-2.31.1.drv:{out}
      • The input named `binutils-2.31.1` differs
        - /nix/store/7b5z32ba8d6n8anmd3c9fv1mfa59h97b-binutils-2.31.1.drv:{info,man,out}
        + /nix/store/d5m6x82svh6acpdnpnh718m1d74k8yjl-binutils-2.31.1.drv:{info,man,out}
        • The set of input names do not match:
            - bison-3.3.2
            + bison-3.4.1
            + gettext-0.19.8.1
        • The input named `bootstrap-stage1-gcc-wrapper` differs
          - /nix/store/alxrkwvls16j8q7ipa5jvddnc89l9m4l-bootstrap-stage1-gcc-wrapper.drv:{out}
          + /nix/store/xcfz8fzlj0gd4x94piqbyrja9ixk3wdj-bootstrap-stage1-gcc-wrapper.drv:{out}
          • The input named `bootstrap-stage0-binutils-wrapper` differs
            - /nix/store/nw3ckrrbn2p2l7xm3bbq6f7bh1c42v3g-bootstrap-stage0-binutils-wrapper.drv:{out}
            + /nix/store/ary8pfy4cnb6i04wgyi5ir3fa0yz6qzv-bootstrap-stage0-binutils-wrapper.drv:{out}
            • The input named `bootstrap-stage0-glibc` differs
              - /nix/store/1xy8lasg87c2vpkjnj0fbys6ivzksc6w-bootstrap-stage0-glibc.drv:{out}
              + /nix/store/kvg3g461qg0wv24rvx53cl2z58zi6wql-bootstrap-stage0-glibc.drv:{out}
              • The input named `bootstrap-stage0-stdenv-linux` differs
                - /nix/store/jvzj3sqvxi6ym87zl4chxmgiqxsnpssx-bootstrap-stage0-stdenv-linux.drv:{out}
                + /nix/store/kc0m2a3giizgcvgrz8y6maxmykm7yw4p-bootstrap-stage0-stdenv-linux.drv:{out}
                • The set of input sources do not match:
                    - /nix/store/10x1sw17w0mkjbnm2yhl8cqzi09vmzhx-setup.sh
                    - /nix/store/6v3y7s4q4wd16hsw393gjpxvcf9159bv-patch-shebangs.sh
                    + /nix/store/33sl3bqjcqzrdd9clgaad3ljlwyl1pkb-patch-shebangs.sh
                    + /nix/store/8f3fvc9q1916gqg4lkkhxaniw9f7pylv-setup.sh
            • The input named `bootstrap-stage0-stdenv-linux` differs
              • These two derivations have already been compared
          • The input named `bootstrap-stage0-glibc` differs
            • These two derivations have already been compared
          • The input named `bootstrap-stage0-stdenv-linux` differs
            • These two derivations have already been compared
        • The input named `bootstrap-stage1-stdenv-linux` differs
          - /nix/store/4kcv6l4w2rdvpyz2ml837sm9xlawlbhk-bootstrap-stage1-stdenv-linux.drv:{out}
          + /nix/store/wk9ib58zy76fijr6hxf3y29y3xs48fxx-bootstrap-stage1-stdenv-linux.drv:{out}
          • The input named `bootstrap-stage1-gcc-wrapper` differs
            • These two derivations have already been compared
        • The input named `zlib-1.2.11` differs
          - /nix/store/37cc34z6nlfm9b8y4i0yll9jr1prh66p-zlib-1.2.11.drv:{dev}
          + /nix/store/mwnkr4q65x6qp8gjj6b1271f6xn66nyn-zlib-1.2.11.drv:{dev}
          • The input named `bootstrap-stage1-stdenv-linux` differs
            • These two derivations have already been compared
      • The input named `bootstrap-stage1-stdenv-linux` differs
        - /nix/store/g8lwaa1h96fapkfpg60l2mr134szi624-bootstrap-stage1-stdenv-linux.drv:{out}
        + /nix/store/c87cqv1i2hbcj8h4afab2dn4b255v4w2-bootstrap-stage1-stdenv-linux.drv:{out}
        • The set of input sources do not match:
            - /nix/store/10x1sw17w0mkjbnm2yhl8cqzi09vmzhx-setup.sh
            - /nix/store/6v3y7s4q4wd16hsw393gjpxvcf9159bv-patch-shebangs.sh
            + /nix/store/33sl3bqjcqzrdd9clgaad3ljlwyl1pkb-patch-shebangs.sh
            + /nix/store/8f3fvc9q1916gqg4lkkhxaniw9f7pylv-setup.sh
      • The input named `expand-response-params` differs
        - /nix/store/6ik9g0nz2hxyip271xkcdap78r8d11fc-expand-response-params.drv:{out}
        + /nix/store/x6xavfn69cdmc0cszhcnqg0gq9i2lzg5-expand-response-params.drv:{out}
        • The input named `bootstrap-stage1-stdenv-linux` differs
          • These two derivations have already been compared
      • The input named `glibc-2.27` differs
        - /nix/store/j9q614bgqlhbmrzqpq8rhlyam3ylp4c8-glibc-2.27.drv:{bin,dev,out}
        + /nix/store/jswx2b2qrx6kb2mlzwjk5pklnisi3gc1-glibc-2.27.drv:{bin,dev,out}
        • The set of input names do not match:
            - bison-3.3.2
            + bison-3.4.1
        • The input named `bootstrap-stage0-glibc` differs
          • These two derivations have already been compared
        • The input named `bootstrap-stage2-gcc-wrapper` differs
          - /nix/store/yawnkyhmzjyz4629p5bydjbldspm6vzc-bootstrap-stage2-gcc-wrapper.drv:{out}
          + /nix/store/d8f0qvqbslbpjanxd0jqb9k04i3ihqpb-bootstrap-stage2-gcc-wrapper.drv:{out}
          • The input named `binutils-wrapper-2.31.1` differs
            - /nix/store/v3abs1pkaq9c466m964cigg774ppirdd-binutils-wrapper-2.31.1.drv:{out}
            + /nix/store/lf6dcgfk7ia12p7ifx7653nqibw3ayix-binutils-wrapper-2.31.1.drv:{out}
            • The input named `binutils-2.31.1` differs
              • These two derivations have already been compared
            • The input named `bootstrap-stage0-glibc` differs
              • These two derivations have already been compared
            • The input named `bootstrap-stage1-stdenv-linux` differs
              • These two derivations have already been compared
            • The input named `expand-response-params` differs
              • These two derivations have already been compared
          • The input named `bootstrap-stage0-glibc` differs
            • These two derivations have already been compared
          • The input named `bootstrap-stage0-stdenv-linux` differs
            • These two derivations have already been compared
          • The input named `expand-response-params` differs
            • These two derivations have already been compared
        • The input named `bootstrap-stage2-stdenv-linux` differs
          - /nix/store/gbv476yr50rbl80rsdanfz4a3s3cad5w-bootstrap-stage2-stdenv-linux.drv:{out}
          + /nix/store/zm4qk57nnl5461djgdd4k6yadik9v179-bootstrap-stage2-stdenv-linux.drv:{out}
          • The input named `bootstrap-stage2-gcc-wrapper` differs
            • These two derivations have already been compared
        • The input named `linux-headers-4.19.16` differs
          - /nix/store/3ixypiqybv0f4zfcv1qhdn4kald479py-linux-headers-4.19.16.drv:{out}
          + /nix/store/hj246ag4jaf9zwj0x7fsnq1c6frkmnbh-linux-headers-4.19.16.drv:{out}
          • The set of input names do not match:
              - perl-5.28.1
              + perl-5.28.2
          • The input named `bootstrap-stage2-gcc-wrapper` differs
            • These two derivations have already been compared
          • The input named `bootstrap-stage2-stdenv-linux` differs
            - /nix/store/9l0216i49z6k3r0pn164c2bqd8i73x57-bootstrap-stage2-stdenv-linux.drv:{out}
            + /nix/store/2s37vdhnlpldglnskdvp9bq2f8byhsqf-bootstrap-stage2-stdenv-linux.drv:{out}
            • The set of input sources do not match:
                - /nix/store/10x1sw17w0mkjbnm2yhl8cqzi09vmzhx-setup.sh
                - /nix/store/6v3y7s4q4wd16hsw393gjpxvcf9159bv-patch-shebangs.sh
                + /nix/store/33sl3bqjcqzrdd9clgaad3ljlwyl1pkb-patch-shebangs.sh
                + /nix/store/8f3fvc9q1916gqg4lkkhxaniw9f7pylv-setup.sh
    • The input named `bootstrap-stage0-stdenv-linux` differs
      • These two derivations have already been compared
    • The input named `expand-response-params` differs
      - /nix/store/j9nyjdmw2q50pn11vy5y381ifbvpgfxd-expand-response-params.drv:{out}
      + /nix/store/4mgcj4hwblm3q4ndznjgkf5wldah3ava-expand-response-params.drv:{out}
      • The input named `bootstrap-stage3-stdenv-linux` differs
        - /nix/store/471dnz7cw5z7qpjfqj95ybablljid9l3-bootstrap-stage3-stdenv-linux.drv:{out}
        + /nix/store/8rzlqx9j6ws4lgnfsyh9dq18ilahkbgc-bootstrap-stage3-stdenv-linux.drv:{out}
        • The input named `bootstrap-stage3-gcc-wrapper` differs
          - /nix/store/i1z4rl0zgrcyh1gaq1z76l7g90g8gpzd-bootstrap-stage3-gcc-wrapper.drv:{out}
          + /nix/store/qfcrrz0avn2p86qyp1q9lfama31ry8mi-bootstrap-stage3-gcc-wrapper.drv:{out}
          • The input named `binutils-wrapper-2.31.1` differs
            • These two derivations have already been compared
          • The input named `bootstrap-stage0-stdenv-linux` differs
            • These two derivations have already been compared
          • The input named `expand-response-params` differs
            - /nix/store/k37848dy67nkwlwjglrj2cafqw5zdx53-expand-response-params.drv:{out}
            + /nix/store/0rxl02i8jlav5ccv73pfxg6r02v7ik1z-expand-response-params.drv:{out}
            • The input named `bootstrap-stage2-stdenv-linux` differs
              • These two derivations have already been compared
          • The input named `glibc-2.27` differs
            • These two derivations have already been compared
        • The input named `patchelf-0.9` differs
          - /nix/store/zmlk2qm7b8l4jz8ck1qsiwxvzg5m9pmr-patchelf-0.9.drv:{out}
          + /nix/store/ccmppjjfxpd32kcw9x5va6rh77ymp8ym-patchelf-0.9.drv:{out}
          • The input named `bootstrap-stage2-stdenv-linux` differs
            • These two derivations have already been compared
    • The input named `gcc-7.4.0` differs
      - /nix/store/dpi3kg3aqgfdqryanzn0wfl40igzzymx-gcc-7.4.0.drv:{info,lib,man,out}
      + /nix/store/ndifb254jlc1n81cnprkglz4xcb19qly-gcc-7.4.0.drv:{info,lib,man,out}
      • The set of input names do not match:
          - perl-5.28.1
          + perl-5.28.2
      • The input named `binutils-wrapper-2.31.1` differs
        • These two derivations have already been compared
      • The input named `bootstrap-stage3-gcc-wrapper` differs
        • These two derivations have already been compared
      • The input named `bootstrap-stage3-stdenv-linux` differs
        • These two derivations have already been compared
      • The input named `gettext-0.19.8.1` differs
        - /nix/store/sqpr9qqafndkkq7ncin0vm2fbndnjb0z-gettext-0.19.8.1.drv:{out}
        + /nix/store/sq86shx0695f01xq1cq8jv8n90mz4kgk-gettext-0.19.8.1.drv:{out}
        • The set of input names do not match:
            + CVE-2018-18751.patch
            + autoconf-2.69
            + automake-1.15
            + bison-3.4.1
        • The input named `bootstrap-stage3-stdenv-linux` differs
          • These two derivations have already been compared
        • The input named `xz-5.2.4` differs
          - /nix/store/7bri6hzx0i2v5dmw0ssm153kkq1frl1g-xz-5.2.4.drv:{bin,dev}
          + /nix/store/96g9mrk7305dbplzmvsnxn1hmqrhg2yk-xz-5.2.4.drv:{bin,dev}
          • The input named `bootstrap-stage3-stdenv-linux` differs
            • These two derivations have already been compared
      • The input named `glibc-2.27` differs
        - /nix/store/j9q614bgqlhbmrzqpq8rhlyam3ylp4c8-glibc-2.27.drv:{dev,out}
        + /nix/store/jswx2b2qrx6kb2mlzwjk5pklnisi3gc1-glibc-2.27.drv:{dev,out}
        • The set of input names do not match:
            - bison-3.3.2
            + bison-3.4.1
        • The input named `bootstrap-stage0-glibc` differs
          • These two derivations have already been compared
        • The input named `bootstrap-stage2-gcc-wrapper` differs
          • These two derivations have already been compared
        • The input named `bootstrap-stage2-stdenv-linux` differs
          • These two derivations have already been compared
        • The input named `linux-headers-4.19.16` differs
          • These two derivations have already been compared
      • The input named `gmp-6.1.2` differs
        - /nix/store/88chwwqv3ifnc39wzlmf7rici20xxjqv-gmp-6.1.2.drv:{dev,out}
        + /nix/store/p2qplj22b0inansppjxbvr6z6jsgdhw9-gmp-6.1.2.drv:{dev,out}
        • The input named `bootstrap-stage3-gcc-wrapper` differs
          • These two derivations have already been compared
        • The input named `bootstrap-stage3-stdenv-linux` differs
          • These two derivations have already been compared
        • The input named `gnum4-1.4.18` differs
          - /nix/store/2scfrhfm933g029pxgim6091zqlsj51f-gnum4-1.4.18.drv:{out}
          + /nix/store/kx4ac0gl69m7cx3ki9drj33jjv1y7ck6-gnum4-1.4.18.drv:{out}
          • The input named `bootstrap-stage1-stdenv-linux` differs
            • These two derivations have already been compared
      • The input named `isl-0.17.1` differs
        - /nix/store/a63q3266423lqpx7ajxzqhrjaq71znlz-isl-0.17.1.drv:{out}
        + /nix/store/pd7jmqmrcms33j3w4cz8vw5bkyrdv6ij-isl-0.17.1.drv:{out}
        • The input named `bootstrap-stage3-stdenv-linux` differs
          • These two derivations have already been compared
        • The input named `gmp-6.1.2` differs
          - /nix/store/88chwwqv3ifnc39wzlmf7rici20xxjqv-gmp-6.1.2.drv:{dev}
          + /nix/store/p2qplj22b0inansppjxbvr6z6jsgdhw9-gmp-6.1.2.drv:{dev}
          • The input named `bootstrap-stage3-gcc-wrapper` differs
            • These two derivations have already been compared
          • The input named `bootstrap-stage3-stdenv-linux` differs
            • These two derivations have already been compared
          • The input named `gnum4-1.4.18` differs
            • These two derivations have already been compared
      • The input named `libelf-0.8.13` differs
        - /nix/store/wd5abz5na90llq02q7397hn29z26lhj4-libelf-0.8.13.drv:{out}
        + /nix/store/y829rii7kx252z5g54d1yg33bip6zwgy-libelf-0.8.13.drv:{out}
        • The input named `bootstrap-stage3-stdenv-linux` differs
          • These two derivations have already been compared
        • The input named `gettext-0.19.8.1` differs
          • These two derivations have already been compared
      • The input named `libmpc-1.1.0` differs
        - /nix/store/rprn2brgkmxg10b21vq8ffq86d4xnq23-libmpc-1.1.0.drv:{out}
        + /nix/store/sqydrq06z433v45fwknrz8iv9jxnzhgz-libmpc-1.1.0.drv:{out}
        • The input named `bootstrap-stage3-stdenv-linux` differs
          • These two derivations have already been compared
        • The input named `gmp-6.1.2` differs
          • These two derivations have already been compared
        • The input named `mpfr-4.0.2` differs
          - /nix/store/cj579nldycj5abwm8hx3801p14c4d2j3-mpfr-4.0.2.drv:{dev}
          + /nix/store/c4ny3sj4khhvxi3qgb724zjn10a4x34l-mpfr-4.0.2.drv:{dev}
          • The input named `bootstrap-stage3-stdenv-linux` differs
            • These two derivations have already been compared
          • The input named `gmp-6.1.2` differs
            • These two derivations have already been compared
      • The input named `mpfr-4.0.2` differs
        - /nix/store/cj579nldycj5abwm8hx3801p14c4d2j3-mpfr-4.0.2.drv:{dev,out}
        + /nix/store/c4ny3sj4khhvxi3qgb724zjn10a4x34l-mpfr-4.0.2.drv:{dev,out}
        • The input named `bootstrap-stage3-stdenv-linux` differs
          • These two derivations have already been compared
        • The input named `gmp-6.1.2` differs
          • These two derivations have already been compared
      • The input named `texinfo-6.5` differs
        - /nix/store/4ghvnpxm16lyqd32kyq7pa72nr8ndxid-texinfo-6.5.drv:{out}
        + /nix/store/p36cdgymx3kp6avy81qhxpz8cn7sgci0-texinfo-6.5.drv:{out}
        • The set of input names do not match:
            - perl-5.28.1
            + perl-5.28.2
        • The input named `bootstrap-stage3-gcc-wrapper` differs
          • These two derivations have already been compared
        • The input named `bootstrap-stage3-stdenv-linux` differs
          • These two derivations have already been compared
        • The input named `xz-5.2.4` differs
          - /nix/store/7bri6hzx0i2v5dmw0ssm153kkq1frl1g-xz-5.2.4.drv:{bin}
          + /nix/store/96g9mrk7305dbplzmvsnxn1hmqrhg2yk-xz-5.2.4.drv:{bin}
          • The input named `bootstrap-stage3-stdenv-linux` differs
            • These two derivations have already been compared
      • The input named `which-2.21` differs
        - /nix/store/0r6z9g6rlm8f4ck979wr0l5yy7ppplxj-which-2.21.drv:{out}
        + /nix/store/qfd6ppsls995dj0l82c7226dmb8m85pz-which-2.21.drv:{out}
        • The input named `bootstrap-stage3-stdenv-linux` differs
          • These two derivations have already been compared
      • The input named `zlib-1.2.11` differs
        - /nix/store/4fxxxk7z599mqamkkfc1fwx1dam8l6xv-zlib-1.2.11.drv:{dev,out}
        + /nix/store/53nhrpwwl91jgjk3s6n8j0x7vnniifxl-zlib-1.2.11.drv:{dev,out}
        • The input named `bootstrap-stage3-stdenv-linux` differs
          • These two derivations have already been compared
    • The input named `glibc-2.27` differs
      • These two derivations have already been compared
  • The input named `bootstrap-stage4-stdenv-linux` differs
    - /nix/store/i3l2dg8bgj7qpw6dqpv51fl4bgpc3n1m-bootstrap-stage4-stdenv-linux.drv:{out}
    + /nix/store/1ry1mg2casizjm18fkzl57dy2mfhgxwk-bootstrap-stage4-stdenv-linux.drv:{out}
    • The input named `bootstrap-stage4-gcc-wrapper-7.4.0` differs
      • These two derivations have already been compared
    • The input named `patchelf-0.9` differs
      • These two derivations have already been compared
    • The input named `xz-5.2.4` differs
      • These two derivations have already been compared
• The input named `hello-2.10.tar.gz` differs
  - /nix/store/frk88riavgwz478cl979cyz8l2p3rdg6-hello-2.10.tar.gz.drv:{out}
  + /nix/store/5dpnkr2xfix1zyd2ni98mc7ys4xnaix6-hello-2.10.tar.gz.drv:{out}
  • The builders do not match
      - /nix/store/cinw572b38aln37glr0zb8lxwrgaffl4-bash-4.4-p23/bin/bash
      + /nix/store/7bkv33x88dc64yhjvfvjvh0fqyhlliwj-bash-4.4-p23/bin/bash
  • The arguments do not match
      • -e
      - /nix/store/qjk2h301faawvbnhv5azhyiaw6vrqalg-builder.sh
      + /nix/store/4snpxiw4s2f0nqn6vl9d7p1jqbiar6iy-builder.sh
  • The set of input names do not match:
      - curl-7.64.0
      + curl-7.65.0
  • The input named `bash-4.4-p23` differs
    • These two derivations have already been compared
  • The input named `mirrors-list` differs
    - /nix/store/7j8f5ry90fx55mf54h92fl50mgxdl6a8-mirrors-list.drv:{out}
    + /nix/store/f6ybd9cslgjsw42fhdf5fsxwnwicm007-mirrors-list.drv:{out}
    • The builders do not match
        - /nix/store/cinw572b38aln37glr0zb8lxwrgaffl4-bash-4.4-p23/bin/bash
        + /nix/store/7bkv33x88dc64yhjvfvjvh0fqyhlliwj-bash-4.4-p23/bin/bash
    • The input named `bash-4.4-p23` differs
      • These two derivations have already been compared
    • The input named `stdenv-linux` differs
      - /nix/store/8g1cpf7nrk0ld42cin27xzbxlh90i0ns-stdenv-linux.drv:{out}
      + /nix/store/7asww2xv5fc9cl62rbrwmbj90v1g2rna-stdenv-linux.drv:{out}
      • The builders do not match
          - /nix/store/cinw572b38aln37glr0zb8lxwrgaffl4-bash-4.4-p23/bin/bash
          + /nix/store/7bkv33x88dc64yhjvfvjvh0fqyhlliwj-bash-4.4-p23/bin/bash
      • The set of input names do not match:
          - coreutils-8.30
          - gnutar-1.31
          - pcre-8.42
          + coreutils-8.31
          + gnutar-1.32
          + pcre-8.43
      • The input named `acl-2.2.53` differs
        - /nix/store/4lvbhxxh5fjd4cg4yzadp9p8dmg6hdpv-acl-2.2.53.drv:{out}
        + /nix/store/0h4zrvajnw0w0wmfcvddhniw4i3nzpa2-acl-2.2.53.drv:{out}
        • The input named `attr-2.4.48` differs
          - /nix/store/0nrviji5lbjlam2ls0hrrdx078vprmvn-attr-2.4.48.drv:{dev}
          + /nix/store/63gwhqql3rad0h9nmkc26d04wcl3n5by-attr-2.4.48.drv:{dev}
          • The input named `bootstrap-stage4-stdenv-linux` differs
            • These two derivations have already been compared
          • The input named `gettext-0.19.8.1` differs
            • These two derivations have already been compared
        • The input named `bootstrap-stage4-stdenv-linux` differs
          • These two derivations have already been compared
        • The input named `gettext-0.19.8.1` differs
          • These two derivations have already been compared
      • The input named `attr-2.4.48` differs
        - /nix/store/0nrviji5lbjlam2ls0hrrdx078vprmvn-attr-2.4.48.drv:{out}
        + /nix/store/63gwhqql3rad0h9nmkc26d04wcl3n5by-attr-2.4.48.drv:{out}
        • The input named `bootstrap-stage4-stdenv-linux` differs
          • These two derivations have already been compared
        • The input named `gettext-0.19.8.1` differs
          • These two derivations have already been compared
      • The input named `bash-4.4-p23` differs
        • These two derivations have already been compared
      • The input named `binutils-2.31.1` differs
        - /nix/store/7ackllpq1z5rd724s41b6fl76g8a8104-binutils-2.31.1.drv:{out}
        + /nix/store/xymrb3r5xxf50yar7c82p6mf3ag9whp4-binutils-2.31.1.drv:{out}
        • The set of input names do not match:
            - bison-3.3.2
            + bison-3.4.1
            + gettext-0.19.8.1
        • The input named `bootstrap-stage4-gcc-wrapper-7.4.0` differs
          • These two derivations have already been compared
        • The input named `bootstrap-stage4-stdenv-linux` differs
          • These two derivations have already been compared
        • The input named `zlib-1.2.11` differs
          - /nix/store/4fxxxk7z599mqamkkfc1fwx1dam8l6xv-zlib-1.2.11.drv:{dev}
          + /nix/store/53nhrpwwl91jgjk3s6n8j0x7vnniifxl-zlib-1.2.11.drv:{dev}
          • The input named `bootstrap-stage3-stdenv-linux` differs
            • These two derivations have already been compared
      • The input named `binutils-wrapper-2.31.1` differs
        - /nix/store/1j2mkbcf3svc0ql4kb4lhacpqdzjlsgd-binutils-wrapper-2.31.1.drv:{out}
        + /nix/store/bs0w5jfv3wdvislsns9c3l1vbb6xibq8-binutils-wrapper-2.31.1.drv:{out}
        • The set of input names do not match:
            - coreutils-8.30
            + coreutils-8.31
        • The input named `bash-4.4-p23` differs
          • These two derivations have already been compared
        • The input named `binutils-2.31.1` differs
          - /nix/store/7ackllpq1z5rd724s41b6fl76g8a8104-binutils-2.31.1.drv:{info,man,out}
          + /nix/store/xymrb3r5xxf50yar7c82p6mf3ag9whp4-binutils-2.31.1.drv:{info,man,out}
          • The set of input names do not match:
              - bison-3.3.2
              + bison-3.4.1
              + gettext-0.19.8.1
          • The input named `bootstrap-stage4-gcc-wrapper-7.4.0` differs
            • These two derivations have already been compared
          • The input named `bootstrap-stage4-stdenv-linux` differs
            • These two derivations have already been compared
          • The input named `zlib-1.2.11` differs
            • These two derivations have already been compared
        • The input named `bootstrap-stage4-stdenv-linux` differs
          - /nix/store/wd2f7lckyx7s2ybcxz3q1vwjdv244ax6-bootstrap-stage4-stdenv-linux.drv:{out}
          + /nix/store/38bp6ic232kzd64m864jrxxlrp6z6nhn-bootstrap-stage4-stdenv-linux.drv:{out}
          • The input named `patchelf-0.9` differs
            • These two derivations have already been compared
          • The input named `xz-5.2.4` differs
            • These two derivations have already been compared
        • The input named `expand-response-params` differs
          • These two derivations have already been compared
        • The input named `glibc-2.27` differs
          • These two derivations have already been compared
        • The input named `gnugrep-3.3` differs
          - /nix/store/asdqcb96s1wmjqbffldd23b27ms1ghv0-gnugrep-3.3.drv:{out}
          + /nix/store/gp8zhmn1h69zpy3zv3kfjdhr1yhcd7v0-gnugrep-3.3.drv:{out}
          • The set of input names do not match:
              - pcre-8.42
              - perl-5.28.1
              + pcre-8.43
              + perl-5.28.2
          • The input named `bootstrap-stage4-stdenv-linux` differs
            • These two derivations have already been compared
          • The input named `glibc-iconv-2.27` differs
            - /nix/store/awl436ngcvcvrhl7nh5j1wwx0c7jh42m-glibc-iconv-2.27.drv:{out}
            + /nix/store/052a4b13sza8ky9dgzjsrvszs6bbfc8s-glibc-iconv-2.27.drv:{out}
            • The input named `bootstrap-stage4-stdenv-linux` differs
              • These two derivations have already been compared
            • The input named `glibc-2.27` differs
              - /nix/store/j9q614bgqlhbmrzqpq8rhlyam3ylp4c8-glibc-2.27.drv:{dev}
              + /nix/store/jswx2b2qrx6kb2mlzwjk5pklnisi3gc1-glibc-2.27.drv:{dev}
              • The set of input names do not match:
                  - bison-3.3.2
                  + bison-3.4.1
              • The input named `bootstrap-stage0-glibc` differs
                • These two derivations have already been compared
              • The input named `bootstrap-stage2-gcc-wrapper` differs
                • These two derivations have already been compared
              • The input named `bootstrap-stage2-stdenv-linux` differs
                • These two derivations have already been compared
              • The input named `linux-headers-4.19.16` differs
                • These two derivations have already been compared
      • The input named `bzip2-1.0.6.0.1` differs
        - /nix/store/ajm1n9y8cm6zgpq73ziz932911z33cr5-bzip2-1.0.6.0.1.drv:{bin,out}
        + /nix/store/r8a3dpbx3p027vpbjaj1bwx56m0vxv2i-bzip2-1.0.6.0.1.drv:{bin,out}
        • The input named `bootstrap-stage4-stdenv-linux` differs
          • These two derivations have already been compared
      • The input named `diffutils-3.7` differs
        - /nix/store/j7804zl9gvmd1r9f2kl1axndncmyg7h4-diffutils-3.7.drv:{out}
        + /nix/store/p0dp856kil9q326yynhdbba3wm28hs6w-diffutils-3.7.drv:{out}
        • The set of input names do not match:
            - coreutils-8.30
            + coreutils-8.31
        • The input named `bootstrap-stage4-stdenv-linux` differs
          • These two derivations have already been compared
        • The input named `xz-5.2.4` differs
          - /nix/store/2a0xw076bwsmh73y6kpcb17di384jifc-xz-5.2.4.drv:{bin}
          + /nix/store/vqripy2ras9jbbx6ddhn87xxhy5hpp9i-xz-5.2.4.drv:{bin}
          • The input named `bootstrap-stage4-stdenv-linux` differs
            • These two derivations have already been compared
      • The input named `ed-1.15` differs
        - /nix/store/0dw6v7x9s0rhd1v4h19sh2hsvahyhqw3-ed-1.15.drv:{out}
        + /nix/store/z1n1di8879jzd11i1wbrn6kifsz9hj7a-ed-1.15.drv:{out}
        • The input named `bootstrap-stage4-stdenv-linux` differs
          • These two derivations have already been compared
        • The input named `lzip-1.21` differs
          - /nix/store/x73mn3z55z66rfc5gp6slwq1zvs7xj5f-lzip-1.21.drv:{out}
          + /nix/store/sc140n0hd64b0f10dzqiihbrbhqnqdnw-lzip-1.21.drv:{out}
          • The input named `bootstrap-stage4-stdenv-linux` differs
            • These two derivations have already been compared
          • The input named `texinfo-6.5` differs
            • These two derivations have already been compared
      • The input named `expand-response-params` differs
        • These two derivations have already been compared
      • The input named `findutils-4.6.0` differs
        - /nix/store/nr1638s0ffa74yz8qbsf1zf6x8f9a0h9-findutils-4.6.0.drv:{out}
        + /nix/store/b09d25n7dvp0yxl0sxhx8vfrp7q4lm9j-findutils-4.6.0.drv:{out}
        • The set of input names do not match:
            - coreutils-8.30
            + coreutils-8.31
        • The input named `bootstrap-stage4-stdenv-linux` differs
          • These two derivations have already been compared
      • The input named `gawk-4.2.1` differs
        - /nix/store/b6cfxck0zj4f956r6g3m76m10h8li78s-gawk-4.2.1.drv:{out}
        + /nix/store/khy1l9dv2nygb25yicvbjw1rxwb3nrlc-gawk-4.2.1.drv:{out}
        • The input named `bootstrap-stage4-stdenv-linux` differs
          • These two derivations have already been compared
      • The input named `gcc-7.4.0` differs
        - /nix/store/dpi3kg3aqgfdqryanzn0wfl40igzzymx-gcc-7.4.0.drv:{lib,out}
        + /nix/store/ndifb254jlc1n81cnprkglz4xcb19qly-gcc-7.4.0.drv:{lib,out}
        • The set of input names do not match:
            - perl-5.28.1
            + perl-5.28.2
        • The input named `binutils-wrapper-2.31.1` differs
          • These two derivations have already been compared
        • The input named `bootstrap-stage3-gcc-wrapper` differs
          • These two derivations have already been compared
        • The input named `bootstrap-stage3-stdenv-linux` differs
          • These two derivations have already been compared
        • The input named `gettext-0.19.8.1` differs
          • These two derivations have already been compared
        • The input named `glibc-2.27` differs
          • These two derivations have already been compared
        • The input named `gmp-6.1.2` differs
          • These two derivations have already been compared
        • The input named `isl-0.17.1` differs
          • These two derivations have already been compared
        • The input named `libelf-0.8.13` differs
          • These two derivations have already been compared
        • The input named `libmpc-1.1.0` differs
          • These two derivations have already been compared
        • The input named `mpfr-4.0.2` differs
          • These two derivations have already been compared
        • The input named `texinfo-6.5` differs
          • These two derivations have already been compared
        • The input named `which-2.21` differs
          • These two derivations have already been compared
        • The input named `zlib-1.2.11` differs
          • These two derivations have already been compared
      • The input named `gcc-wrapper-7.4.0` differs
        - /nix/store/dyxdjxyszmlz29mb0jr9qkncj5l41dai-gcc-wrapper-7.4.0.drv:{out}
        + /nix/store/psr32sk2dlwacv43qnnxnsvbacz5wp8p-gcc-wrapper-7.4.0.drv:{out}
        • The set of input names do not match:
            - coreutils-8.30
            + coreutils-8.31
        • The input named `bash-4.4-p23` differs
          • These two derivations have already been compared
        • The input named `binutils-wrapper-2.31.1` differs
          • These two derivations have already been compared
        • The input named `bootstrap-stage4-stdenv-linux` differs
          • These two derivations have already been compared
        • The input named `expand-response-params` differs
          • These two derivations have already been compared
        • The input named `gcc-7.4.0` differs
          • These two derivations have already been compared
        • The input named `glibc-2.27` differs
          • These two derivations have already been compared
        • The input named `gnugrep-3.3` differs
          • These two derivations have already been compared
      • The input named `glibc-2.27` differs
        • These two derivations have already been compared
      • The input named `gnugrep-3.3` differs
        • These two derivations have already been compared
      • The input named `gnumake-4.2.1` differs
        - /nix/store/cd6pa0z8cmyhvbmjs8blf257anyy55cr-gnumake-4.2.1.drv:{out}
        + /nix/store/5fkbh96n8k8zq9z6l82z6rgb4c87kvfs-gnumake-4.2.1.drv:{out}
        • The input named `bootstrap-stage4-stdenv-linux` differs
          • These two derivations have already been compared
      • The input named `gnused-4.7` differs
        - /nix/store/zl7xpli5wij34i8b3640n34sxkqwq14h-gnused-4.7.drv:{out}
        + /nix/store/h0gyqmddnx7s03kx705xy1fvsmqpg00p-gnused-4.7.drv:{out}
        • The set of input names do not match:
            - perl-5.28.1
            + perl-5.28.2
        • The input named `bootstrap-stage4-stdenv-linux` differs
          • These two derivations have already been compared
      • The input named `gzip-1.10` differs
        - /nix/store/n79xj2q8b6ykcn9jr1b4k88mk073a7gx-gzip-1.10.drv:{out}
        + /nix/store/nv15300h9s1ywa59d0ldnh8qlhfygz1h-gzip-1.10.drv:{out}
        • The input named `bootstrap-stage4-stdenv-linux` differs
          • These two derivations have already been compared
        • The input named `xz-5.2.4` differs
          • These two derivations have already been compared
      • The input named `linux-headers-4.19.16` differs
        • These two derivations have already been compared
      • The input named `patch-2.7.6` differs
        - /nix/store/qnmj5w2jbaxb9pf1wh9zzc3z731pliy0-patch-2.7.6.drv:{out}
        + /nix/store/rpxmxhb1x9a1x2ibp4vcg93cbq4yp980-patch-2.7.6.drv:{out}
        • The input named `bootstrap-stage4-stdenv-linux` differs
          • These two derivations have already been compared
        • The input named `ed-1.15` differs
          • These two derivations have already been compared
        • The input named `hook` differs
          - /nix/store/bi3ar3p7s06ra4622hqgyjhjn9sh32h9-hook.drv:{out}
          + /nix/store/7fz00v4bxg3vl98lyabrhcayhyyifwhm-hook.drv:{out}
          • The input named `autoconf-2.69` differs
            - /nix/store/wvkgn2y3295w2gga2vx7yi6xlzj7749y-autoconf-2.69.drv:{out}
            + /nix/store/kjziskx52swvn8sca5bl0rf1dxkz8vmm-autoconf-2.69.drv:{out}
            • The set of input names do not match:
                - perl-5.28.1
                + perl-5.28.2
            • The input named `bootstrap-stage4-stdenv-linux` differs
              • These two derivations have already been compared
            • The input named `gnum4-1.4.18` differs
              • These two derivations have already been compared
          • The input named `automake-1.16.1` differs
            - /nix/store/4sqjr402ngnjv21pd7qd01bbhaz0ibdg-automake-1.16.1.drv:{out}
            + /nix/store/1qs2jy25m2n7lbn9iwh9gc9pw6k1kkld-automake-1.16.1.drv:{out}
            • The set of input names do not match:
                - perl-5.28.1
                + perl-5.28.2
            • The input named `autoconf-2.69` differs
              • These two derivations have already been compared
            • The input named `bootstrap-stage4-stdenv-linux` differs
              • These two derivations have already been compared
          • The input named `bootstrap-stage4-stdenv-linux` differs
            • These two derivations have already been compared
          • The input named `gettext-0.19.8.1` differs
            • These two derivations have already been compared
          • The input named `libtool-2.4.6` differs
            - /nix/store/w3g3nn7m8nnsd7mjr50b3cp8jigb71fz-libtool-2.4.6.drv:{out}
            + /nix/store/490ag87wx2i936w7dm5hggxy5f53zwr0-libtool-2.4.6.drv:{out}
            • The set of input names do not match:
                - help2man-1.47.8
                - perl-5.28.1
                + help2man-1.47.10
                + perl-5.28.2
            • The input named `bootstrap-stage4-stdenv-linux` differs
              • These two derivations have already been compared
            • The input named `gnum4-1.4.18` differs
              • These two derivations have already been compared
      • The input named `patchelf-0.9` differs
        - /nix/store/xd6whirm4r913frvvgp6bpljnl1g65pg-patchelf-0.9.drv:{out}
        + /nix/store/v96rf9mx9a1inpln1yjr27kfpnmx9cql-patchelf-0.9.drv:{out}
        • The input named `bootstrap-stage4-stdenv-linux` differs
          • These two derivations have already been compared
      • The input named `xz-5.2.4` differs
        - /nix/store/2a0xw076bwsmh73y6kpcb17di384jifc-xz-5.2.4.drv:{bin,out}
        + /nix/store/vqripy2ras9jbbx6ddhn87xxhy5hpp9i-xz-5.2.4.drv:{bin,out}
        • The input named `bootstrap-stage4-stdenv-linux` differs
          • These two derivations have already been compared
      • The input named `zlib-1.2.11` differs
        - /nix/store/4fxxxk7z599mqamkkfc1fwx1dam8l6xv-zlib-1.2.11.drv:{out}
        + /nix/store/53nhrpwwl91jgjk3s6n8j0x7vnniifxl-zlib-1.2.11.drv:{out}
        • The input named `bootstrap-stage3-stdenv-linux` differs
          • These two derivations have already been compared
  • The input named `stdenv-linux` differs
    • These two derivations have already been compared
• The input named `stdenv-linux` differs
  - /nix/store/fjhmb2fr7fx5azg89ldqywkmj5604z08-stdenv-linux.drv:{out}
  + /nix/store/3d547md672sl43r4rg1x7g20vcagwqa0-stdenv-linux.drv:{out}
  • The builders do not match
      - /nix/store/cinw572b38aln37glr0zb8lxwrgaffl4-bash-4.4-p23/bin/bash
      + /nix/store/7bkv33x88dc64yhjvfvjvh0fqyhlliwj-bash-4.4-p23/bin/bash
  • The set of input names do not match:
      - coreutils-8.30
      - gnutar-1.31
      - pcre-8.42
      + coreutils-8.31
      + gnutar-1.32
      + pcre-8.43
  • The input named `acl-2.2.53` differs
    • These two derivations have already been compared
  • The input named `attr-2.4.48` differs
    • These two derivations have already been compared
  • The input named `bash-4.4-p23` differs
    • These two derivations have already been compared
  • The input named `binutils-2.31.1` differs
    • These two derivations have already been compared
  • The input named `binutils-wrapper-2.31.1` differs
    • These two derivations have already been compared
  • The input named `bzip2-1.0.6.0.1` differs
    • These two derivations have already been compared
  • The input named `diffutils-3.7` differs
    • These two derivations have already been compared
  • The input named `ed-1.15` differs
    • These two derivations have already been compared
  • The input named `expand-response-params` differs
    • These two derivations have already been compared
  • The input named `findutils-4.6.0` differs
    • These two derivations have already been compared
  • The input named `gawk-4.2.1` differs
    • These two derivations have already been compared
  • The input named `gcc-7.4.0` differs
    • These two derivations have already been compared
  • The input named `gcc-wrapper-7.4.0` differs
    • These two derivations have already been compared
  • The input named `glibc-2.27` differs
    • These two derivations have already been compared
  • The input named `gnugrep-3.3` differs
    • These two derivations have already been compared
  • The input named `gnumake-4.2.1` differs
    • These two derivations have already been compared
  • The input named `gnused-4.7` differs
    • These two derivations have already been compared
  • The input named `gzip-1.10` differs
    • These two derivations have already been compared
  • The input named `linux-headers-4.19.16` differs
    • These two derivations have already been compared
  • The input named `patch-2.7.6` differs
    • These two derivations have already been compared
  • The input named `patchelf-0.9` differs
    • These two derivations have already been compared
  • The input named `xz-5.2.4` differs
    • These two derivations have already been compared
  • The input named `zlib-1.2.11` differs
    • These two derivations have already been compared
/home/zimbatm/foo/experiment-nix-build-diff/result
```
