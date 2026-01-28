# pragtich-guixmodules
Locally handwritten guix modules for my own use

This should not be interesting for most people. It's just me playing with Guix. I do not really know what I'm doing yet.

# Sources

[futurile.net article](https://www.futurile.net/2024/01/12/modifying-guix-packages-using-inheritance/)

# Usage


[A Reddit thread on how to use](https://www.reddit.com/r/GUIX/comments/p6wn5s/how_to_create_and_test_new_packages/)

- Clone into a local folder
- `guix build -f filename.scm`
- `guix install $(guix build -f filename.scm)`

