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
  #:use-module (guix packages)
  #:use-module (gnu packages syncthing))
  
(define syncthing2
  (package
   (inherit syncthing)
   (name "syncthing2")
   (version "2.0.13-pragtich")
   (source
    (origin
     (method url-fetch)
     (uri "https://github.com/syncthing/syncthing/releases/download/v2.0.13/syncthing-source-v2.0.13.tar.gz"))
    (sha256
     (base32
      "fd7c93e01a6d61faa84adda8b22479dd7fd106144fbbb2eb15d773707d8a382e")))))
    
     

