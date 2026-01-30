;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2016 Petter <petter@mykolab.ch>
;;; Copyright © 2016-2021, 2024 Leo Famulari <leo@famulari.name>
;;; Copyright © 2020 Tobias Geerinckx-Rice <me@tobias.gr>
;;; Copyright © 2020-2022 Efraim Flashner <efraim@flashner.co.il>
;;; Copyright © 2020 Giacomo Leidi <therewasa@fishinthecalculator.me>
;;; Copyright © 2021 Maxim Cournoyer <maxim@guixotic.coop>
;;; Copyright © 2021 Arun Isaac <arunisaac@systemreboot.net>
;;; Copyright © 2022 John Kehayias <john.kehayias@protonmail.com>
;;; Copyright © 2023 Benjamin Slade <slade@lambda-y.net>
;;; Copyright © 2024 David Pflug <david@pflug.io>
;;; Copyright © 2026 Joris Pragt
;;;

(define-module (local-packages)
  #:use-module (guix download)
  #:use-module (guix utils)
  #:use-module (guix packages)
  #:use-module (gnu packages syncthing)
  #:use-module (gnu packages golang))
  
(define-public syncthing2
  (package
   (inherit syncthing)
   (name "syncthing2-pragtich")
   (version "2.0.13-pragtich")
   (source
    (origin
     (method url-fetch)
     (uri "https://github.com/syncthing/syncthing/releases/download/v2.0.13/syncthing-source-v2.0.13.tar.gz")
    (sha256
     (base32
      "0biqi9yp0wyp2pmv5fsg2h3d2zyxg4jb5a6x9alglqbd3bh96z7x"))))
   (arguments
    (substitute-keyword-arguments (package-arguments syncthing)
				  ((#:go _ go) go-1.25))
    )
   ))

syncthing2
     

