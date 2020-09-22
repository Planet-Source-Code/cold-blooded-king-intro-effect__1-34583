VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   5010
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   6405
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5010
   ScaleWidth      =   6405
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "Cold Blooded King"
      BeginProperty Font 
         Name            =   "Arial Black"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   225
      Left            =   2520
      TabIndex        =   0
      Top             =   3120
      Width           =   1650
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Sample Source: Intro Effect
'Coder: Cold Blooded King
'Note: Share with people who need


Private Sub Do_Intro()
Y = 10
X = 0
Label1.ForeColor = RGB(0, 0, 0)
Do
X = X + 15
Y = Y + 2
Label1.ForeColor = RGB(X, 0, 0)
Label1.FontSize = Y
Label_Center
Pause 0.01
Loop Until X >= 255
Pause 0.8
B = Label1.Top
Do
B = B + 350
X = X - 15
Y = Y - 2
Me.Cls
Label1.ForeColor = RGB(X, 0, 0)
Label1.FontSize = Y
Label1.Top = B
Pause 0.01
Loop Until X <= 0
End Sub


Sub Pause(interval)
Dim X
X = Timer
Do While Timer - X < Val(interval)
DoEvents
Loop
End Sub



Private Sub Label_Center()
Label1.Left = Screen.Width / 2 - Label1.Width / 2
Label1.Top = Screen.Height / 2 - Label1.Height / 2

End Sub

Private Sub Form_DblClick()
Unload Me
End Sub

Private Sub Form_Load()
Me.Show
Label1.Caption = "Sample . . . "
Do_Intro
Label1.Caption = "How to Make an Intro"
Do_Intro
Label1.Caption = "Coded By . . ."
Do_Intro
Label1.Caption = "Cold Blooded King"
Do_Intro

'this is the end of intro, do watever u want next, form.show or watever
Unload Me
End Sub
