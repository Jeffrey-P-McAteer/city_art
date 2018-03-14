# City Art

This is an HTML5 app designed for Norfolk artists to publish and view artwork in an AR environment.

A secondary goal is to design objectively useful utilities in AR-space. Some quick musings:

  * Pathfinder - display footprints of people
  * X-Ray - Let people see through buildings
  * 

# Infrastructure Design

Everything is going to be done via a cloud provider. Doesn't matter who, just so long as we get VMs, publicly-routable IPs, and a DNS namespace.

The VM will be provisioned to host a Docker container and to publish the proper ports (80 and 443).

We're using LetsEncrypt for SSL certs.

Language Choice: Rust and HTML5/CSS3/JS. Rust will run backend systems and handles storing new data.
NGINX will be employed to serve static data and proxy requests to Rust.

# User experience

Beginning: Scan A QR code, putting your web browser at this-app.com.
QR codes should have an optional location query parameter which the server will use to frontload geographic data.

# Some rules

  * We do not push slow code. Everything loads in <5s on devices built within 2 years, > 16fps for all experiences.
  * We talk to the user. Error messages, notifications, etc. should be small and noticable but not obnoxious. We should NOT require any silly button-pushing during the main UX.
  * We want to interact with 3rd party apps.


# Links and Research

https://medium.com/arjs/augmented-reality-in-10-lines-of-html-4e193ea9fdbf
https://github.com/jeromeetienne/AR.js
https://aframe.io/blog/arjs/

https://hacks.mozilla.org/2016/03/build-the-virtual-reality-web-with-a-frame/

# Howto: Custom Marker

https://jeromeetienne.github.io/AR.js/three.js/examples/marker-training/examples/generator.html
