/********************************************************************************
** Form generated from reading UI file 'InboundWidget.ui'
**
** Created by: Qt User Interface Compiler version 6.9.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_INBOUNDWIDGET_H
#define UI_INBOUNDWIDGET_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QFormLayout>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_InboundWidget
{
public:
    QVBoxLayout *verticalLayout;
    QGroupBox *groupBox;
    QFormLayout *formLayout;
    QLabel *label;
    QLineEdit *trackingNumberEdit;
    QLabel *label_2;
    QLineEdit *studentIdEdit;
    QLabel *label_3;
    QCheckBox *expressCheckBox;
    QPushButton *submitButton;

    void setupUi(QWidget *InboundWidget)
    {
        if (InboundWidget->objectName().isEmpty())
            InboundWidget->setObjectName("InboundWidget");
        InboundWidget->resize(400, 300);
        verticalLayout = new QVBoxLayout(InboundWidget);
        verticalLayout->setObjectName("verticalLayout");
        groupBox = new QGroupBox(InboundWidget);
        groupBox->setObjectName("groupBox");
        formLayout = new QFormLayout(groupBox);
        formLayout->setObjectName("formLayout");
        label = new QLabel(groupBox);
        label->setObjectName("label");

        formLayout->setWidget(0, QFormLayout::ItemRole::LabelRole, label);

        trackingNumberEdit = new QLineEdit(groupBox);
        trackingNumberEdit->setObjectName("trackingNumberEdit");

        formLayout->setWidget(0, QFormLayout::ItemRole::FieldRole, trackingNumberEdit);

        label_2 = new QLabel(groupBox);
        label_2->setObjectName("label_2");

        formLayout->setWidget(1, QFormLayout::ItemRole::LabelRole, label_2);

        studentIdEdit = new QLineEdit(groupBox);
        studentIdEdit->setObjectName("studentIdEdit");

        formLayout->setWidget(1, QFormLayout::ItemRole::FieldRole, studentIdEdit);

        label_3 = new QLabel(groupBox);
        label_3->setObjectName("label_3");

        formLayout->setWidget(2, QFormLayout::ItemRole::LabelRole, label_3);

        expressCheckBox = new QCheckBox(groupBox);
        expressCheckBox->setObjectName("expressCheckBox");

        formLayout->setWidget(2, QFormLayout::ItemRole::FieldRole, expressCheckBox);


        verticalLayout->addWidget(groupBox);

        submitButton = new QPushButton(InboundWidget);
        submitButton->setObjectName("submitButton");

        verticalLayout->addWidget(submitButton);


        retranslateUi(InboundWidget);

        QMetaObject::connectSlotsByName(InboundWidget);
    } // setupUi

    void retranslateUi(QWidget *InboundWidget)
    {
        InboundWidget->setWindowTitle(QCoreApplication::translate("InboundWidget", "\345\277\253\351\200\222\345\205\245\345\272\223", nullptr));
        groupBox->setTitle(QCoreApplication::translate("InboundWidget", "\345\277\253\351\200\222\344\277\241\346\201\257", nullptr));
        label->setText(QCoreApplication::translate("InboundWidget", "\345\277\253\351\200\222\345\215\225\345\217\267:", nullptr));
        label_2->setText(QCoreApplication::translate("InboundWidget", "\345\255\246\347\224\237ID:", nullptr));
        label_3->setText(QCoreApplication::translate("InboundWidget", "\346\230\257\345\220\246\346\200\245\344\273\266:", nullptr));
        expressCheckBox->setText(QCoreApplication::translate("InboundWidget", "\346\230\257", nullptr));
        submitButton->setText(QCoreApplication::translate("InboundWidget", "\346\217\220\344\272\244\345\205\245\345\272\223", nullptr));
    } // retranslateUi

};

namespace Ui {
    class InboundWidget: public Ui_InboundWidget {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_INBOUNDWIDGET_H
