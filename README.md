# Official Constellation Website Repository

This is the repository that builds https://constellation-app.com hosted
using GitHub Pages located at https://constellation-app.github.io.

# File Structure Explained

The `docs` folder is what GitHub Pages is serving so ultimately
everything that is required to serve pages must go there.

Presently the images and html files live in the `docs` folder. The
javascript and css files are inside the `src` folder and running the
build script will compile, minify and move the files into `docs/assets`.

The colours of the site are controlled my `src/sass/libs/_vars.scss`.

# How to Build

To build the website run the following commands

    npm install
    npm run build

# Contributions

We welcome feedback and contributions to this website. Please send
through a Pull Request for us to review.

# Attribution

This website was developed using the [HTML5 Up Helios
template](https://html5up.net/helios)
