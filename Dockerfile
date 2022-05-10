FROM nixos/nix

RUN echo 'coder:x:1000:1000::/home/coder/:/nix/store/vc75jx26xkjmiw9437jrb8kbaj398n5d-bash-interactive-4.4-p23/bin/bash' >> /etc/passwd

USER coder

CMD nix-shell -p bash --command bash
