#define Q_(a,b) QString::fromUtf8(_(a))
/********************************************************************************
** Form generated from reading UI file 'sprefs_interface.ui'
**
** Created by: Qt User Interface Compiler version 5.11.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef SPREFS_INTERFACE_H
#define SPREFS_INTERFACE_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QFrame>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QRadioButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QSpinBox>
#include <QtWidgets/QStackedWidget>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>
#include "components/preferences_widgets.hpp"

QT_BEGIN_NAMESPACE

class Ui_SPrefsInterface
{
public:
    QVBoxLayout *verticalLayout;
    QGroupBox *langBox;
    QHBoxLayout *horizontalLayout;
    QLabel *label;
    QComboBox *langCombo;
    QGroupBox *LooknfeelBox;
    QGridLayout *gridLayout;
    QRadioButton *skins;
    QSpacerItem *horizontalSpacer;
    QSpacerItem *horizontalSpacer_4;
    QRadioButton *qt;
    QSpacerItem *horizontalSpacer_5;
    QFrame *line;
    QStackedWidget *styleStackedWidget;
    QWidget *nativePage;
    QHBoxLayout *horizontalLayout_4;
    InterfacePreviewWidget *mainPreview;
    QWidget *native_zone;
    QGridLayout *gridLayout1;
    QCheckBox *resizingBox;
    QComboBox *notificationCombo;
    QComboBox *stylesCombo;
    QCheckBox *fsController;
    QCheckBox *pauseMinimizedBox;
    QLabel *notificationComboLabel;
    QCheckBox *minimalviewBox;
    QLabel *stylesLabel;
    QCheckBox *embedVideo;
    QSpacerItem *horizontalSpacer_3;
    QSpacerItem *horizontalSpacer_7;
    QCheckBox *systrayBox;
    QLabel *continuePlaybackLabel;
    QComboBox *continuePlaybackComboBox;
    QLabel *autoRaiseLabel;
    QComboBox *autoRaiseComboBox;
    QWidget *skinsPage;
    QHBoxLayout *horizontalLayout_5;
    InterfacePreviewWidget *skinsPreview;
    QWidget *skins_zone;
    QGridLayout *gridLayout_7;
    QLabel *skinFileLabel;
    QLineEdit *fileSkin;
    QPushButton *skinBrowse;
    QLabel *skinsLabel;
    QGroupBox *OneInterfaceBox;
    QGridLayout *gridLayout_2;
    QCheckBox *OneInterfaceMode;
    QCheckBox *oneInstanceFromFile;
    QCheckBox *treePlaylist;
    QCheckBox *playPauseBox;
    QCheckBox *EnqueueOneInterfaceMode;
    QGroupBox *groupBox_2;
    QGridLayout *gridLayout_5;
    QSpinBox *updatesDays;
    QSpacerItem *horizontalSpacer_2;
    QLabel *filterLabel;
    QLineEdit *recentlyPlayedFilters;
    QCheckBox *saveRecentlyPlayed;
    QCheckBox *updatesBox;
    QCheckBox *MetadataNetworkAccessMode;
    QGroupBox *osGroupBox;
    QGridLayout *gridLayout_4;
    QLabel *assocLabel;
    QSpacerItem *horizontalSpacer_6;
    QPushButton *assoButton;
    QSpacerItem *horizontalSpacer_8;
    QSpacerItem *verticalSpacer;

    void setupUi(QWidget *SPrefsInterface)
    {
        if (SPrefsInterface->objectName().isEmpty())
            SPrefsInterface->setObjectName(QStringLiteral("SPrefsInterface"));
        SPrefsInterface->resize(700, 757);
        QSizePolicy sizePolicy(QSizePolicy::Preferred, QSizePolicy::Minimum);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(SPrefsInterface->sizePolicy().hasHeightForWidth());
        SPrefsInterface->setSizePolicy(sizePolicy);
        verticalLayout = new QVBoxLayout(SPrefsInterface);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        langBox = new QGroupBox(SPrefsInterface);
        langBox->setObjectName(QStringLiteral("langBox"));
        horizontalLayout = new QHBoxLayout(langBox);
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        label = new QLabel(langBox);
        label->setObjectName(QStringLiteral("label"));

        horizontalLayout->addWidget(label);

        langCombo = new QComboBox(langBox);
        langCombo->setObjectName(QStringLiteral("langCombo"));

        horizontalLayout->addWidget(langCombo);


        verticalLayout->addWidget(langBox);

        LooknfeelBox = new QGroupBox(SPrefsInterface);
        LooknfeelBox->setObjectName(QStringLiteral("LooknfeelBox"));
        gridLayout = new QGridLayout(LooknfeelBox);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setContentsMargins(-1, -1, -1, 0);
        skins = new QRadioButton(LooknfeelBox);
        skins->setObjectName(QStringLiteral("skins"));

        gridLayout->addWidget(skins, 0, 4, 1, 1);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout->addItem(horizontalSpacer, 0, 6, 1, 1);

        horizontalSpacer_4 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout->addItem(horizontalSpacer_4, 0, 1, 1, 1);

        qt = new QRadioButton(LooknfeelBox);
        qt->setObjectName(QStringLiteral("qt"));
        qt->setChecked(true);

        gridLayout->addWidget(qt, 0, 2, 1, 1);

        horizontalSpacer_5 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout->addItem(horizontalSpacer_5, 0, 3, 1, 1);

        line = new QFrame(LooknfeelBox);
        line->setObjectName(QStringLiteral("line"));
        line->setFrameShape(QFrame::HLine);
        line->setFrameShadow(QFrame::Sunken);

        gridLayout->addWidget(line, 1, 2, 1, 3);

        styleStackedWidget = new QStackedWidget(LooknfeelBox);
        styleStackedWidget->setObjectName(QStringLiteral("styleStackedWidget"));
        nativePage = new QWidget();
        nativePage->setObjectName(QStringLiteral("nativePage"));
        horizontalLayout_4 = new QHBoxLayout(nativePage);
        horizontalLayout_4->setObjectName(QStringLiteral("horizontalLayout_4"));
        horizontalLayout_4->setContentsMargins(0, -1, 0, -1);
        mainPreview = new InterfacePreviewWidget(nativePage);
        mainPreview->setObjectName(QStringLiteral("mainPreview"));
        QSizePolicy sizePolicy1(QSizePolicy::Maximum, QSizePolicy::Maximum);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(mainPreview->sizePolicy().hasHeightForWidth());
        mainPreview->setSizePolicy(sizePolicy1);
        mainPreview->setMinimumSize(QSize(122, 50));
        mainPreview->setStyleSheet(QStringLiteral("background-color: rgb(192, 192, 192);"));
        mainPreview->setAlignment(Qt::AlignHCenter|Qt::AlignTop);

        horizontalLayout_4->addWidget(mainPreview);

        native_zone = new QWidget(nativePage);
        native_zone->setObjectName(QStringLiteral("native_zone"));
        QSizePolicy sizePolicy2(QSizePolicy::Preferred, QSizePolicy::Preferred);
        sizePolicy2.setHorizontalStretch(10);
        sizePolicy2.setVerticalStretch(0);
        sizePolicy2.setHeightForWidth(native_zone->sizePolicy().hasHeightForWidth());
        native_zone->setSizePolicy(sizePolicy2);
        gridLayout1 = new QGridLayout(native_zone);
        gridLayout1->setObjectName(QStringLiteral("gridLayout1"));
        gridLayout1->setContentsMargins(10, 0, -1, 0);
        resizingBox = new QCheckBox(native_zone);
        resizingBox->setObjectName(QStringLiteral("resizingBox"));

        gridLayout1->addWidget(resizingBox, 1, 2, 1, 2);

        notificationCombo = new QComboBox(native_zone);
        notificationCombo->setObjectName(QStringLiteral("notificationCombo"));

        gridLayout1->addWidget(notificationCombo, 5, 2, 1, 2);

        stylesCombo = new QComboBox(native_zone);
        stylesCombo->setObjectName(QStringLiteral("stylesCombo"));

        gridLayout1->addWidget(stylesCombo, 9, 2, 1, 2);

        fsController = new QCheckBox(native_zone);
        fsController->setObjectName(QStringLiteral("fsController"));

        gridLayout1->addWidget(fsController, 0, 0, 1, 5);

        pauseMinimizedBox = new QCheckBox(native_zone);
        pauseMinimizedBox->setObjectName(QStringLiteral("pauseMinimizedBox"));

        gridLayout1->addWidget(pauseMinimizedBox, 3, 2, 1, 2);

        notificationComboLabel = new QLabel(native_zone);
        notificationComboLabel->setObjectName(QStringLiteral("notificationComboLabel"));

        gridLayout1->addWidget(notificationComboLabel, 5, 0, 1, 1);

        minimalviewBox = new QCheckBox(native_zone);
        minimalviewBox->setObjectName(QStringLiteral("minimalviewBox"));

        gridLayout1->addWidget(minimalviewBox, 3, 0, 1, 1);

        stylesLabel = new QLabel(native_zone);
        stylesLabel->setObjectName(QStringLiteral("stylesLabel"));
        QSizePolicy sizePolicy3(QSizePolicy::Maximum, QSizePolicy::Preferred);
        sizePolicy3.setHorizontalStretch(0);
        sizePolicy3.setVerticalStretch(0);
        sizePolicy3.setHeightForWidth(stylesLabel->sizePolicy().hasHeightForWidth());
        stylesLabel->setSizePolicy(sizePolicy3);

        gridLayout1->addWidget(stylesLabel, 9, 0, 1, 1);

        embedVideo = new QCheckBox(native_zone);
        embedVideo->setObjectName(QStringLiteral("embedVideo"));

        gridLayout1->addWidget(embedVideo, 1, 0, 1, 1);

        horizontalSpacer_3 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout1->addItem(horizontalSpacer_3, 1, 1, 1, 1);

        horizontalSpacer_7 = new QSpacerItem(20, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout1->addItem(horizontalSpacer_7, 1, 4, 1, 1);

        systrayBox = new QCheckBox(native_zone);
        systrayBox->setObjectName(QStringLiteral("systrayBox"));

        gridLayout1->addWidget(systrayBox, 4, 0, 1, 2);

        continuePlaybackLabel = new QLabel(native_zone);
        continuePlaybackLabel->setObjectName(QStringLiteral("continuePlaybackLabel"));

        gridLayout1->addWidget(continuePlaybackLabel, 10, 0, 1, 1);

        continuePlaybackComboBox = new QComboBox(native_zone);
        continuePlaybackComboBox->setObjectName(QStringLiteral("continuePlaybackComboBox"));
        continuePlaybackComboBox->setEnabled(true);

        gridLayout1->addWidget(continuePlaybackComboBox, 10, 2, 1, 2);

        autoRaiseLabel = new QLabel(native_zone);
        autoRaiseLabel->setObjectName(QStringLiteral("autoRaiseLabel"));

        gridLayout1->addWidget(autoRaiseLabel, 11, 0, 1, 1);

        autoRaiseComboBox = new QComboBox(native_zone);
        autoRaiseComboBox->setObjectName(QStringLiteral("autoRaiseComboBox"));

        gridLayout1->addWidget(autoRaiseComboBox, 11, 2, 1, 2);


        horizontalLayout_4->addWidget(native_zone);

        styleStackedWidget->addWidget(nativePage);
        skinsPage = new QWidget();
        skinsPage->setObjectName(QStringLiteral("skinsPage"));
        horizontalLayout_5 = new QHBoxLayout(skinsPage);
        horizontalLayout_5->setObjectName(QStringLiteral("horizontalLayout_5"));
        horizontalLayout_5->setContentsMargins(0, -1, 0, -1);
        skinsPreview = new InterfacePreviewWidget(skinsPage);
        skinsPreview->setObjectName(QStringLiteral("skinsPreview"));
        sizePolicy1.setHeightForWidth(skinsPreview->sizePolicy().hasHeightForWidth());
        skinsPreview->setSizePolicy(sizePolicy1);
        skinsPreview->setMinimumSize(QSize(122, 50));
        skinsPreview->setStyleSheet(QStringLiteral("background-color: rgb(192, 192, 192);"));
        skinsPreview->setAlignment(Qt::AlignCenter);

        horizontalLayout_5->addWidget(skinsPreview);

        skins_zone = new QWidget(skinsPage);
        skins_zone->setObjectName(QStringLiteral("skins_zone"));
        skins_zone->setEnabled(true);
        QSizePolicy sizePolicy4(QSizePolicy::Preferred, QSizePolicy::Preferred);
        sizePolicy4.setHorizontalStretch(0);
        sizePolicy4.setVerticalStretch(0);
        sizePolicy4.setHeightForWidth(skins_zone->sizePolicy().hasHeightForWidth());
        skins_zone->setSizePolicy(sizePolicy4);
        gridLayout_7 = new QGridLayout(skins_zone);
        gridLayout_7->setObjectName(QStringLiteral("gridLayout_7"));
        gridLayout_7->setContentsMargins(0, 0, 0, 0);
        skinFileLabel = new QLabel(skins_zone);
        skinFileLabel->setObjectName(QStringLiteral("skinFileLabel"));
        skinFileLabel->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);

        gridLayout_7->addWidget(skinFileLabel, 1, 1, 1, 1);

        fileSkin = new QLineEdit(skins_zone);
        fileSkin->setObjectName(QStringLiteral("fileSkin"));
        QSizePolicy sizePolicy5(QSizePolicy::MinimumExpanding, QSizePolicy::Fixed);
        sizePolicy5.setHorizontalStretch(0);
        sizePolicy5.setVerticalStretch(0);
        sizePolicy5.setHeightForWidth(fileSkin->sizePolicy().hasHeightForWidth());
        fileSkin->setSizePolicy(sizePolicy5);

        gridLayout_7->addWidget(fileSkin, 1, 2, 1, 1);

        skinBrowse = new QPushButton(skins_zone);
        skinBrowse->setObjectName(QStringLiteral("skinBrowse"));
        QSizePolicy sizePolicy6(QSizePolicy::Maximum, QSizePolicy::Fixed);
        sizePolicy6.setHorizontalStretch(0);
        sizePolicy6.setVerticalStretch(0);
        sizePolicy6.setHeightForWidth(skinBrowse->sizePolicy().hasHeightForWidth());
        skinBrowse->setSizePolicy(sizePolicy6);

        gridLayout_7->addWidget(skinBrowse, 1, 3, 1, 1);

        skinsLabel = new QLabel(skins_zone);
        skinsLabel->setObjectName(QStringLiteral("skinsLabel"));
        sizePolicy4.setHeightForWidth(skinsLabel->sizePolicy().hasHeightForWidth());
        skinsLabel->setSizePolicy(sizePolicy4);
        skinsLabel->setFrameShape(QFrame::NoFrame);
        skinsLabel->setText(QStringLiteral("-This is the skinsLabel place-"));
        skinsLabel->setTextFormat(Qt::RichText);
        skinsLabel->setScaledContents(false);
        skinsLabel->setAlignment(Qt::AlignLeading|Qt::AlignLeft|Qt::AlignTop);
        skinsLabel->setWordWrap(true);
        skinsLabel->setMargin(5);
        skinsLabel->setOpenExternalLinks(true);

        gridLayout_7->addWidget(skinsLabel, 2, 1, 1, 3);


        horizontalLayout_5->addWidget(skins_zone);

        styleStackedWidget->addWidget(skinsPage);

        gridLayout->addWidget(styleStackedWidget, 2, 0, 6, 7);


        verticalLayout->addWidget(LooknfeelBox);

        OneInterfaceBox = new QGroupBox(SPrefsInterface);
        OneInterfaceBox->setObjectName(QStringLiteral("OneInterfaceBox"));
        gridLayout_2 = new QGridLayout(OneInterfaceBox);
        gridLayout_2->setObjectName(QStringLiteral("gridLayout_2"));
        OneInterfaceMode = new QCheckBox(OneInterfaceBox);
        OneInterfaceMode->setObjectName(QStringLiteral("OneInterfaceMode"));

        gridLayout_2->addWidget(OneInterfaceMode, 0, 0, 1, 1);

        oneInstanceFromFile = new QCheckBox(OneInterfaceBox);
        oneInstanceFromFile->setObjectName(QStringLiteral("oneInstanceFromFile"));

        gridLayout_2->addWidget(oneInstanceFromFile, 1, 0, 1, 2);

        treePlaylist = new QCheckBox(OneInterfaceBox);
        treePlaylist->setObjectName(QStringLiteral("treePlaylist"));

        gridLayout_2->addWidget(treePlaylist, 2, 0, 1, 1);

        playPauseBox = new QCheckBox(OneInterfaceBox);
        playPauseBox->setObjectName(QStringLiteral("playPauseBox"));

        gridLayout_2->addWidget(playPauseBox, 2, 1, 1, 1);

        EnqueueOneInterfaceMode = new QCheckBox(OneInterfaceBox);
        EnqueueOneInterfaceMode->setObjectName(QStringLiteral("EnqueueOneInterfaceMode"));

        gridLayout_2->addWidget(EnqueueOneInterfaceMode, 0, 1, 1, 1);


        verticalLayout->addWidget(OneInterfaceBox);

        groupBox_2 = new QGroupBox(SPrefsInterface);
        groupBox_2->setObjectName(QStringLiteral("groupBox_2"));
        gridLayout_5 = new QGridLayout(groupBox_2);
        gridLayout_5->setObjectName(QStringLiteral("gridLayout_5"));
        gridLayout_5->setContentsMargins(-1, -1, -1, 4);
        updatesDays = new QSpinBox(groupBox_2);
        updatesDays->setObjectName(QStringLiteral("updatesDays"));
        sizePolicy5.setHeightForWidth(updatesDays->sizePolicy().hasHeightForWidth());
        updatesDays->setSizePolicy(sizePolicy5);
        updatesDays->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);

        gridLayout_5->addWidget(updatesDays, 1, 3, 1, 1);

        horizontalSpacer_2 = new QSpacerItem(40, 20, QSizePolicy::Preferred, QSizePolicy::Minimum);

        gridLayout_5->addItem(horizontalSpacer_2, 2, 1, 1, 1);

        filterLabel = new QLabel(groupBox_2);
        filterLabel->setObjectName(QStringLiteral("filterLabel"));
        filterLabel->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        filterLabel->setMargin(5);

        gridLayout_5->addWidget(filterLabel, 2, 2, 1, 1);

        recentlyPlayedFilters = new QLineEdit(groupBox_2);
        recentlyPlayedFilters->setObjectName(QStringLiteral("recentlyPlayedFilters"));
        sizePolicy5.setHeightForWidth(recentlyPlayedFilters->sizePolicy().hasHeightForWidth());
        recentlyPlayedFilters->setSizePolicy(sizePolicy5);

        gridLayout_5->addWidget(recentlyPlayedFilters, 2, 3, 1, 2);

        saveRecentlyPlayed = new QCheckBox(groupBox_2);
        saveRecentlyPlayed->setObjectName(QStringLiteral("saveRecentlyPlayed"));
        saveRecentlyPlayed->setMinimumSize(QSize(220, 0));

        gridLayout_5->addWidget(saveRecentlyPlayed, 2, 0, 1, 1);

        updatesBox = new QCheckBox(groupBox_2);
        updatesBox->setObjectName(QStringLiteral("updatesBox"));
        updatesBox->setMinimumSize(QSize(220, 0));

        gridLayout_5->addWidget(updatesBox, 1, 0, 1, 1);

        MetadataNetworkAccessMode = new QCheckBox(groupBox_2);
        MetadataNetworkAccessMode->setObjectName(QStringLiteral("MetadataNetworkAccessMode"));

        gridLayout_5->addWidget(MetadataNetworkAccessMode, 4, 0, 1, 1);


        verticalLayout->addWidget(groupBox_2);

        osGroupBox = new QGroupBox(SPrefsInterface);
        osGroupBox->setObjectName(QStringLiteral("osGroupBox"));
        gridLayout_4 = new QGridLayout(osGroupBox);
        gridLayout_4->setObjectName(QStringLiteral("gridLayout_4"));
        assocLabel = new QLabel(osGroupBox);
        assocLabel->setObjectName(QStringLiteral("assocLabel"));
        sizePolicy3.setHeightForWidth(assocLabel->sizePolicy().hasHeightForWidth());
        assocLabel->setSizePolicy(sizePolicy3);

        gridLayout_4->addWidget(assocLabel, 2, 0, 1, 1);

        horizontalSpacer_6 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_4->addItem(horizontalSpacer_6, 2, 1, 1, 1);

        assoButton = new QPushButton(osGroupBox);
        assoButton->setObjectName(QStringLiteral("assoButton"));
        QSizePolicy sizePolicy7(QSizePolicy::Preferred, QSizePolicy::Fixed);
        sizePolicy7.setHorizontalStretch(0);
        sizePolicy7.setVerticalStretch(0);
        sizePolicy7.setHeightForWidth(assoButton->sizePolicy().hasHeightForWidth());
        assoButton->setSizePolicy(sizePolicy7);
        assoButton->setMinimumSize(QSize(220, 0));

        gridLayout_4->addWidget(assoButton, 2, 2, 1, 1);

        horizontalSpacer_8 = new QSpacerItem(135, 20, QSizePolicy::Minimum, QSizePolicy::Minimum);

        gridLayout_4->addItem(horizontalSpacer_8, 2, 3, 1, 1);


        verticalLayout->addWidget(osGroupBox);

        verticalSpacer = new QSpacerItem(20, 0, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout->addItem(verticalSpacer);

#ifndef QT_NO_SHORTCUT
        label->setBuddy(langCombo);
        notificationComboLabel->setBuddy(notificationCombo);
        stylesLabel->setBuddy(stylesCombo);
        skinFileLabel->setBuddy(fileSkin);
        filterLabel->setBuddy(recentlyPlayedFilters);
        assocLabel->setBuddy(assoButton);
#endif // QT_NO_SHORTCUT
        QWidget::setTabOrder(langCombo, qt);
        QWidget::setTabOrder(qt, skins);
        QWidget::setTabOrder(skins, fsController);
        QWidget::setTabOrder(fsController, embedVideo);
        QWidget::setTabOrder(embedVideo, minimalviewBox);
        QWidget::setTabOrder(minimalviewBox, systrayBox);
        QWidget::setTabOrder(systrayBox, resizingBox);
        QWidget::setTabOrder(resizingBox, pauseMinimizedBox);
        QWidget::setTabOrder(pauseMinimizedBox, notificationCombo);
        QWidget::setTabOrder(notificationCombo, stylesCombo);
        QWidget::setTabOrder(stylesCombo, OneInterfaceMode);
        QWidget::setTabOrder(OneInterfaceMode, oneInstanceFromFile);
        QWidget::setTabOrder(oneInstanceFromFile, treePlaylist);
        QWidget::setTabOrder(treePlaylist, EnqueueOneInterfaceMode);
        QWidget::setTabOrder(EnqueueOneInterfaceMode, playPauseBox);
        QWidget::setTabOrder(playPauseBox, updatesBox);
        QWidget::setTabOrder(updatesBox, saveRecentlyPlayed);
        QWidget::setTabOrder(saveRecentlyPlayed, updatesDays);
        QWidget::setTabOrder(updatesDays, recentlyPlayedFilters);
        QWidget::setTabOrder(recentlyPlayedFilters, assoButton);
        QWidget::setTabOrder(assoButton, skinBrowse);
        QWidget::setTabOrder(skinBrowse, fileSkin);

        retranslateUi(SPrefsInterface);

        styleStackedWidget->setCurrentIndex(0);


        QMetaObject::connectSlotsByName(SPrefsInterface);
    } // setupUi

    void retranslateUi(QWidget *SPrefsInterface)
    {
        SPrefsInterface->setWindowTitle(Q_("Form", nullptr));
        langBox->setTitle(Q_("Language", nullptr));
        label->setText(Q_("Menus language:", nullptr));
        LooknfeelBox->setTitle(Q_("Look and feel", nullptr));
        skins->setText(Q_("Use custom skin", nullptr));
#ifndef QT_NO_TOOLTIP
        qt->setToolTip(Q_("This is VLC's default interface, with a native look and feel.", nullptr));
#endif // QT_NO_TOOLTIP
        qt->setText(Q_("Use native style", nullptr));
        resizingBox->setText(Q_("Resize interface to video size", nullptr));
        fsController->setText(Q_("Show controls in full screen mode", nullptr));
        pauseMinimizedBox->setText(Q_("Pause playback when minimized", nullptr));
        notificationComboLabel->setText(Q_("Show media change popup:", nullptr));
        minimalviewBox->setText(Q_("Start in minimal view mode", nullptr));
        stylesLabel->setText(Q_("Force window style:", nullptr));
        embedVideo->setText(Q_("Integrate video in interface", nullptr));
        systrayBox->setText(Q_("Show systray icon", nullptr));
        continuePlaybackLabel->setText(Q_("Continue playback?", nullptr));
        autoRaiseLabel->setText(Q_("Auto raising the interface:", nullptr));
        skinFileLabel->setText(Q_("Skin resource file:", nullptr));
        skinBrowse->setText(Q_("Choose...", nullptr));
        OneInterfaceBox->setTitle(Q_("Playlist and Instances", nullptr));
        OneInterfaceMode->setText(Q_("Allow only one instance", nullptr));
        oneInstanceFromFile->setText(Q_("Use only one instance when started from file manager", nullptr));
        treePlaylist->setText(Q_("Display playlist tree", nullptr));
        playPauseBox->setText(Q_("Pause on the last frame of a video", nullptr));
        EnqueueOneInterfaceMode->setText(Q_("Enqueue items into playlist in one instance mode", nullptr));
        groupBox_2->setTitle(Q_("Privacy / Network Interaction", nullptr));
        updatesDays->setSuffix(Q_(" days", nullptr));
        updatesDays->setPrefix(Q_("Every ", nullptr));
        filterLabel->setText(Q_("Filter:", nullptr));
#ifndef QT_NO_TOOLTIP
        recentlyPlayedFilters->setToolTip(Q_("Separate words by | (without space)", nullptr));
#endif // QT_NO_TOOLTIP
        saveRecentlyPlayed->setText(Q_("Save recently played items", nullptr));
        updatesBox->setText(Q_("Activate updates notifier", nullptr));
        MetadataNetworkAccessMode->setText(Q_("Allow metadata network access", nullptr));
        osGroupBox->setTitle(Q_("Operating System Integration", nullptr));
        assocLabel->setText(Q_("File extensions association", nullptr));
        assoButton->setText(Q_("Set up associations...", nullptr));
    } // retranslateUi

};

namespace Ui {
    class SPrefsInterface: public Ui_SPrefsInterface {};
} // namespace Ui

QT_END_NAMESPACE

#endif // SPREFS_INTERFACE_H
