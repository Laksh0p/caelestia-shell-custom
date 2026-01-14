//just for testing Beta-version
import ".."
import QtQuick

Flickable {
    id: root

    // Trackpad-friendly tuning
    interactive: true
    flickDeceleration: 6000
    maximumFlickVelocity: 1200
    boundsBehavior: Flickable.StopAtBounds
    pressDelay: 0
    pixelAligned: false
    clip: true

    // Gentle smoothing (no inertia fighting your finger)
    Behavior on contentY {
        NumberAnimation {
            duration: 90
            easing.type: Easing.OutQuad
        }
    }

    // Disable rubber-band bounce (bad for trackpads)
    rebound: null
}

