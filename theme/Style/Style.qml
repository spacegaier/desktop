pragma Singleton

import QtQuick 2.15

import com.nextcloud.desktopclient 1.0

QtObject {
    readonly property int pixelSize: fontMetrics.font.pixelSize

    // Colors
    readonly property color ncBlue:      Theme.wizardHeaderBackgroundColor
    readonly property color ncTextColor: Theme.systemPalette.windowText
    readonly property color ncSecondaryTextColor: "#808080"
    readonly property color ncHeaderTextColor: "white"
    readonly property color lightHover: Theme.darkMode ? Qt.lighter(backgroundColor, 2) : Qt.darker(backgroundColor, 1.05)
    readonly property color menuBorder: ncSecondaryTextColor
    readonly property color backgroundColor: Theme.systemPalette.base

    // ErrorBox colors
    readonly property color errorBoxTextColor:       Theme.errorBoxTextColor
    readonly property color errorBoxBackgroundColor: Theme.errorBoxBackgroundColor
    readonly property color errorBoxBorderColor:     Theme.errorBoxBorderColor

    // Fonts
    // We are using pixel size because this is cross platform comparable, point size isn't
    readonly property int topLinePixelSize: pixelSize
    readonly property int subLinePixelSize: topLinePixelSize - 2

    // Dimensions and sizes
    property int trayWindowWidth: variableSize(400)
    property int trayWindowHeight: variableSize(510)
    property int trayWindowRadius: 10
    property int trayWindowBorderWidth: 1
    property int trayWindowHeaderHeight: variableSize(60)
    property int trayHorizontalMargin: 10
    property int trayListItemIconSize: accountAvatarSize

    property int currentAccountButtonWidth: 220
    property int currentAccountButtonRadius: 2
    property int currentAccountLabelWidth: 128

    property url stateOnlineImageSource: Theme.stateOnlineImageSource
    property url stateOfflineImageSource: Theme.stateOfflineImageSource

    property int accountAvatarSize: (trayWindowHeaderHeight - 16)
    property int accountAvatarStateIndicatorSize: 16
    property int folderStateIndicatorSize: 16
    property int accountLabelWidth: 128

    property int accountDropDownCaretSize: 20
    property int accountDropDownCaretMargin: 8

    property int addAccountButtonHeight: 50

    property int headerButtonIconSize: 32

    property int activityLabelBaseWidth: 240

    property int activityItemActionPrimaryButtonMinWidth: 100
    property int activityItemActionSecondaryButtonMinWidth: 80

    property int roundButtonBackgroundVerticalMargins: 10
    property int roundedButtonBackgroundVerticalMargins: 5
    
    property int userStatusEmojiSize: 8
    property int userStatusSpacing: trayHorizontalMargin
    property int userStatusAnchorsMargin: 2
    property int accountServerAnchorsMargin: 10
    property int accountLabelsSpacing: 4
    property int accountLabelsAnchorsMargin: 7
    property int accountLabelsLayoutMargin: 12
    property int accountLabelsLayoutTopMargin: 10

    // Visual behaviour
    property bool hoverEffectsEnabled: true

    // unified search constants
    readonly property int unifiedSearchItemHeight: trayWindowHeaderHeight
    readonly property int unifiedSearchResultTextLeftMargin: 18
    readonly property int unifiedSearchResultTextRightMargin: 16
    readonly property int unifiedSearchResulIconWidth: 24
    readonly property int unifiedSearchResulIconLeftMargin: 12
    readonly property int unifiedSearchResulTitleFontSize: topLinePixelSize
    readonly property int unifiedSearchResulSublineFontSize: subLinePixelSize

    readonly property var fontMetrics: FontMetrics {}

    function variableSize(size) {
        return size * (1 + Math.min(pixelSize / 100, 1));       
    }
}
