#!/bin/sh
# icons depend on nerdfonts being installed
mail() {
    pakgs="$(ls /home/kim/Mail/*/INBOX | wc -l)"
    echo -e " $pakgs"
}
echo "  $(mail)"
