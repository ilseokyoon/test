VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3375
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   5070
   LinkTopic       =   "Form1"
   ScaleHeight     =   3375
   ScaleWidth      =   5070
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Chingutalk 
      Caption         =   "ģ���� �߼�"
      Height          =   495
      Index           =   1
      Left            =   1920
      TabIndex        =   7
      Top             =   1440
      Width           =   1215
   End
   Begin VB.CommandButton Alimtalk 
      Caption         =   "�˸��� �߼�"
      Height          =   495
      Index           =   0
      Left            =   1920
      TabIndex        =   6
      Top             =   840
      Width           =   1215
   End
   Begin VB.CommandButton MMS 
      Caption         =   "MMS �߼�"
      Height          =   495
      Index           =   1
      Left            =   480
      TabIndex        =   5
      Top             =   2040
      Width           =   1215
   End
   Begin VB.CommandButton Balance 
      Caption         =   "�ܾ���ȸ"
      Height          =   495
      Index           =   1
      Left            =   3360
      TabIndex        =   4
      Top             =   840
      Width           =   1215
   End
   Begin VB.CommandButton LMS 
      Caption         =   "LMS �߼�"
      Height          =   495
      Index           =   0
      Left            =   480
      TabIndex        =   3
      Top             =   1440
      Width           =   1215
   End
   Begin VB.CommandButton MessageList 
      Caption         =   "�����ȸ"
      Height          =   495
      Index           =   0
      Left            =   3360
      TabIndex        =   1
      Top             =   1440
      Width           =   1215
   End
   Begin VB.CommandButton SMS 
      Caption         =   "SMS �߼�"
      Height          =   495
      Left            =   480
      TabIndex        =   0
      Top             =   840
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "��û ����� ����� â�� ��µ˴ϴ�."
      Height          =   255
      Left            =   600
      TabIndex        =   2
      Top             =   240
      Width           =   3495
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Alimtalk_Click(Index As Integer)
    ' �ؽ�Ʈ ���븸 �ִ� ������ �˸���
    Dim kakaoOptions1 As New Dictionary
    kakaoOptions1.Add "pfId", "KA01PF190626020502205cl0mYSoplA2"  ' īī����ä�� ���� �� �߱޹��� ���� ����� �ּ���
    kakaoOptions1.Add "templateId", "KA01TP190626032036196g86q1RGN7D1"  ' ���ø� ��� �� �߱޹��� ���� ����� �ּ���
    
    Dim msg1 As New Dictionary
    msg1.Add "to", "01000000001"
    msg1.Add "from", "029302266"
    msg1.Add "text", "�ȳ��ϼ���." & vbLf & "ȫ�浿�� ȸ�������� ȯ���մϴ�."
    msg1.Add "kakaoOptions", kakaoOptions1
    
    ' �� ��ũ ��ư�� �ϳ� �ִ� �˸���
    Dim button1 As New Dictionary
    button1.Add "buttonName", "�����ϱ�"
    button1.Add "buttonType", "WL"
    button1.Add "linkMo", "https://example.com"
    
    Dim kakaoOptions2 As New Dictionary
    kakaoOptions2.Add "pfId", "KA01PF190626020502205cl0mYSoplA2"
    kakaoOptions2.Add "templateId", "KA01TP190626032036196g86q1RGN7D2"
    kakaoOptions2.Add "buttons", Array(button1)
    
    Dim msg2 As New Dictionary
    msg2.Add "to", "01000000002"
    msg2.Add "from", "029302266"
    msg2.Add "text", "�ȳ��ϼ���." & vbLf & "ȫ�浿�� ȸ�������� ȯ���մϴ�."
    msg2.Add "kakaoOptions", kakaoOptions2
    

    ' ��� ������ ��ư ����
    Dim button2 As New Dictionary
    button2.Add "buttonName", "�����ϱ�"
    button2.Add "buttonType", "WL"
    button2.Add "linkMo", "https://m.example.com"
    button2.Add "linkPc", "https://example.com"
    
    Dim button3 As New Dictionary
    button3.Add "buttonName", "�۽���"
    button3.Add "buttonType", "AL"
    button3.Add "linkAnd", "examplescheme://"  ' �ȵ���̵�
    button3.Add "linkIos", "examplescheme://"  ' iOS
    
    Dim button4 As New Dictionary
    button4.Add "buttonName", "�����ȸ"
    button4.Add "buttonType", "DS"
    
    Dim button5 As New Dictionary
    button5.Add "buttonName", "��Ű����"
    button5.Add "buttonType", "BK" ' ê������ Ű���带 �����մϴ�. ��ư�̸��� Ű���尡 �״�� ���޵˴ϴ�.
    
    Dim button6 As New Dictionary
    button6.Add "buttonName", "����û�ϱ�"
    button6.Add "buttonType", "MD" ' ����û�ϱ� ��ư�� ������ ���� ���� �˸��� �޽����� �������� �״�� ���޵˴ϴ�.
    
    Dim kakaoOptions3 As New Dictionary
    kakaoOptions3.Add "pfId", "KA01PF190626020502205cl0mYSoplA2"
    kakaoOptions3.Add "templateId", "KA01TP190626032036196g86q1RGN7D3"
    kakaoOptions3.Add "buttons", Array(button2, button3, button4, button5, button6)
    
    Dim msg3 As New Dictionary
    msg3.Add "to", "01000000003"
    msg3.Add "from", "029302266"
    msg3.Add "text", "�ȳ��ϼ���." & vbLf & "ȫ�浿�� ȸ�������� ȯ���մϴ�." & vbLf & "�Ʒ� �پ��� ������ ��ư�� ���� ������� ������ �� �ֽ��ϴ�."
    msg3.Add "kakaoOptions", kakaoOptions3


    ' 1���Ǳ��� �߰� ����
    Dim Messages
    Messages = Array(msg1, msg2, msg3)
    
    Dim Body As New Dictionary
    Body.Add "messages", Messages
    
    Dim Response As WebResponse
    Set Response = Request("messages/v4/send-many", "POST", Body)
    If Response.StatusCode = WebStatusCode.Ok Then
        Debug.Print ("�߼ۼ���")
        ' JSON Object�� ����
        Debug.Print ("Group ID:" & Response.data("groupId"))
        Debug.Print ("Status:" & Response.data("status"))
        Debug.Print ("Total Count:" & Response.data("count")("total"))
        ' String �������� ���� ��� ���� ���
        Debug.Print (Response.Content)
    Else
        Debug.Print ("�߼۽���")
        Debug.Print (Response.Content)
    End If
End Sub

Private Sub Balance_Click(Index As Integer)
    Dim Response As WebResponse
    Set Response = Request("cash/v1/balance", "GET")
    If Response.StatusCode = WebStatusCode.Ok Then
        ' JSON Object�� ����
        Debug.Print ("���� �ܾ�:" & Response.data("balance"))
        Debug.Print ("���� ����Ʈ:" & Response.data("point"))
        ' String �������� ���� ��� ���� ���
        Debug.Print (Response.Content)
        MsgBox ("���� �ܾ��� " & Response.data("balance") & "�� �׸��� " & Response.data("point") & "����Ʈ�� �����ֽ��ϴ�.")
    Else
        Debug.Print ("�ܾ���ȸ����")
        Debug.Print (Response.Content)
    End If
End Sub

Private Sub Chingutalk_Click(Index As Integer)
    ' �ؽ�Ʈ ���븸 �ִ� ������ ģ����
    Dim kakaoOptions1 As New Dictionary
    kakaoOptions1.Add "pfId", "KA01PF190626020502205cl0mYSoplA2"  ' īī����ä�� ���� �� �߱޹��� ���� ����� �ּ���
    
    Dim msg1 As New Dictionary
    msg1.Add "to", "01000000001"
    msg1.Add "from", "029302266"
    msg1.Add "text", "���� �����Ͽ� � �����̵� �Է� �����մϴ�."
    msg1.Add "kakaoOptions", kakaoOptions1
    
    ' ��� ������ ��ư ����
    Dim button1 As New Dictionary
    button1.Add "buttonName", "�����ϱ�"
    button1.Add "buttonType", "WL"
    button1.Add "linkMo", "https://m.example.com"   ' ����� ��⿡�� �������� ��ũ
    button1.Add "linkPc", "https://example.com"     ' PC���� �������� ��ũ
    
    Dim button2 As New Dictionary
    button2.Add "buttonName", "�۽���"
    button2.Add "buttonType", "AL"
    button2.Add "linkAnd", "https://example.com"  ' �ȵ���̵�
    button2.Add "linkIos", "https://example.com"  ' iOS
    
    Dim button3 As New Dictionary
    button3.Add "buttonName", "��Ű����"
    button3.Add "buttonType", "BK" ' ê������ Ű���带 �����մϴ�. ��ư�̸��� Ű���尡 �״�� ���޵˴ϴ�.
    
    Dim button4 As New Dictionary
    button4.Add "buttonName", "����û�ϱ�"
    button4.Add "buttonType", "MD" ' ����û�ϱ� ��ư�� ������ ���� ���� �˸��� �޽����� �������� �״�� ���޵˴ϴ�.
    
    Dim kakaoOptions2 As New Dictionary
    kakaoOptions2.Add "pfId", "KA01PF190626020502205cl0mYSoplA2"
    kakaoOptions2.Add "buttons", Array(button1, button2, button3, button4)
    
    Dim msg2 As New Dictionary
    msg2.Add "to", "01000000002"
    msg2.Add "from", "029302266"
    msg2.Add "text", "���� �����Ͽ� � �����̵� �Է� �����մϴ�."
    msg2.Add "kakaoOptions", kakaoOptions2
    
    
    ' ģ���忡 ����� �̹��� ���ε�
    Dim resp As WebResponse
    Dim imageId As String
    Set resp = UploadKakaoImage("testImage.jpg", "https://example.com")
    If resp.StatusCode <> 200 Then
        Debug.Print ("�̹��� ���ε� ����")
        Exit Sub
    End If
    Debug.Print (resp.Content)
    imageId = resp.data("fileId")
    
    ' ģ���� �̹��� �߼�
    Dim kakaoOptions3 As New Dictionary
    kakaoOptions3.Add "pfId", "KA01PF190626020502205cl0mYSoplA2"
    kakaoOptions3.Add "imageId", imageId
    
    Dim msg3 As New Dictionary
    msg3.Add "to", "01000000003"
    msg3.Add "from", "029302266"
    msg3.Add "text", "���� �����Ͽ� � �����̵� �Է� �����մϴ�." & vbLf & "�̹����� ��ġ�ϸ� URL�� �̵��˴ϴ�."
    msg3.Add "kakaoOptions", kakaoOptions3
    

    ' 1���Ǳ��� �߰� ����
    Dim Messages
    Messages = Array(msg1, msg2, msg3)
    
    Dim Body As New Dictionary
    Body.Add "messages", Messages
    
    Dim Response As WebResponse
    Set Response = Request("messages/v4/send-many", "POST", Body)
    If Response.StatusCode = WebStatusCode.Ok Then
        Debug.Print ("�߼ۼ���")
        ' JSON Object�� ����
        Debug.Print ("Group ID:" & Response.data("groupId"))
        Debug.Print ("Status:" & Response.data("status"))
        Debug.Print ("Total Count:" & Response.data("count")("total"))
        ' String �������� ���� ��� ���� ���
        Debug.Print (Response.Content)
    Else
        Debug.Print ("�߼۽���")
        Debug.Print (Response.Content)
    End If
End Sub

Private Sub MessageList_Click(Index As Integer)
    Dim Response As WebResponse
    Set Response = Request("messages/v4/list", "GET")
    Debug.Print (Response.StatusDescription)
    Dim line As Integer
    Dim indent As Integer
    Debug.Print (Response.Content)
End Sub


Private Sub SMS_Click()
    Dim msg1 As New Dictionary
    msg1.Add "to", "01000000001"
    msg1.Add "from", "029302266"
    msg1.Add "text", "�ѱ� 45��, ���� 90�� ���� �ԷµǸ� �ڵ����� SMSŸ���� �޽����� �߰��˴ϴ�."
    
    Dim msg2 As New Dictionary
    msg2.Add "to", "01000000002"
    msg2.Add "from", "029302266"
    msg2.Add "text", "�ѱ� 45��, ���� 90�� �̻� �ԷµǸ� �ڵ����� LMSŸ���� ���ڸ޽��ڰ� �߼۵˴ϴ�. 0123456789 ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    
    ' Ÿ���� ����� ��� text ���̰� �ѱ� 45 Ȥ�� ���� 90�ڸ� ���� ��� ������ �߻��մϴ�.
    Dim msg3 As New Dictionary
    msg3.Add "type", "SMS" ' Ÿ���� SMS�� �Է�
    msg3.Add "to", "01000000003"
    msg3.Add "from", "029302266"
    msg3.Add "text", "SMS Ÿ�Կ� �ѱ� 45��, ���� 90�� �̻� �ԷµǸ� ������ �߻��մϴ�. 0123456789 ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    ' 1���Ǳ��� �߰� ����
    Dim Messages
    Messages = Array(msg1, msg2, msg3)
    
    Dim Body As New Dictionary
    Body.Add "messages", Messages
    
    Dim Response As WebResponse
    Set Response = Request("messages/v4/send-many", "POST", Body)
    If Response.StatusCode = WebStatusCode.Ok Then
        Debug.Print ("�߼ۼ���")
        ' JSON Object�� ����
        Debug.Print ("Group ID:" & Response.data("groupId"))
        Debug.Print ("Status:" & Response.data("status"))
        Debug.Print ("Total Count:" & Response.data("count")("total"))
        ' String �������� ���� ��� ���� ���
        Debug.Print (Response.Content)
    Else
        Debug.Print ("�߼۽���")
        Debug.Print (Response.Content)
    End If
End Sub


Private Sub LMS_Click(Index As Integer)
    Dim msg1 As New Dictionary
    msg1.Add "to", "01000000001"
    msg1.Add "from", "029302266"
    msg1.Add "text", "�ѱ� 45��, ���� 90�� �̻� �ԷµǸ� �ڵ����� LMSŸ���� ���ڸ޽��ڰ� �߼۵˴ϴ�. 0123456789 ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    
    Dim msg2 As New Dictionary
    msg2.Add "to", "01000000002"
    msg2.Add "from", "029302266"
    msg2.Add "subject", "LMS ����" ' ������ ������ �� �ֽ��ϴ�.
    msg2.Add "text", "�ѱ� 45��, ���� 90�� �̻� �ԷµǸ� �ڵ����� LMSŸ���� ���ڸ޽��ڰ� �߼۵˴ϴ�. 0123456789 ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    
    Dim msg3 As New Dictionary
    msg3.Add "type", "LMS" ' Ÿ���� ����� �� �ֽ��ϴ�.
    msg3.Add "to", "01000000003"
    msg3.Add "from", "029302266"
    msg3.Add "text", "������ ª�Ƶ� LMS�� �߼۵˴ϴ�."
   
    Dim msg4 As New Dictionary
    msg4.Add "to", "01000000004"
    msg4.Add "from", "029302266"
    msg4.Add "text", "�ѱ� 45��, ���� 90�� ���ϴ� �ڵ����� SMSŸ���� ���ڰ� �߼۵˴ϴ�."

    ' 1���Ǳ��� �߰� ����
    Dim Messages
    Messages = Array(msg1, msg2, msg3, msg4)
    
    Dim Body As New Dictionary
    Body.Add "messages", Messages
    
    Dim Response As WebResponse
    Set Response = Request("messages/v4/send-many", "POST", Body)
    If Response.StatusCode = WebStatusCode.Ok Then
        Debug.Print ("�߼ۼ���")
        ' JSON Object�� ����
        Debug.Print ("Group ID:" & Response.data("groupId"))
        Debug.Print ("Status:" & Response.data("status"))
        Debug.Print ("Total Count:" & Response.data("count")("total"))
        ' String �������� ���� ��� ���� ���
        Debug.Print (Response.Content)
    Else
        Debug.Print ("�߼۽���")
        Debug.Print (Response.Content)
    End If

End Sub


Private Sub MMS_Click(Index As Integer)
    On Error GoTo Handler
    Dim resp As WebResponse
    Dim imageId As String
    Set resp = UploadImage("testImage.jpg")
    If resp.StatusCode <> 200 Then
        Exit Sub
    End If
    
    Debug.Print (resp.Content)
    imageId = resp.data("fileId")
    
    Dim msg1 As New Dictionary
    msg1.Add "to", "01000000001"
    msg1.Add "from", "029302266"
    msg1.Add "subject", "MMS ����"
    msg1.Add "text", "�̹��� ���̵� �ԷµǸ� MMS�� �߼۵˴ϴ�."
    msg1.Add "imageId", imageId
    
    Dim msg2 As New Dictionary
    msg2.Add "to", "01000000002"
    msg2.Add "from", "029302266"
    msg2.Add "subject", "MMS ����"
    msg2.Add "text", "������ �̹��� ���̵� �ԷµǸ� ������ �̹����� MMS�� �߼۵˴ϴ�."
    msg2.Add "imageId", imageId
    

    ' 1���Ǳ��� �߰� ����
    Dim Messages
    Messages = Array(msg1, msg2)
    
    Dim Body As New Dictionary
    Body.Add "messages", Messages
    
    Dim Response As WebResponse
    Set Response = Request("messages/v4/send-many", "POST", Body)
    If Response.StatusCode = WebStatusCode.Ok Then
        Debug.Print ("�߼ۼ���")
        ' JSON Object�� ����
        Debug.Print ("Group ID:" & Response.data("groupId"))
        Debug.Print ("Status:" & Response.data("status"))
        Debug.Print ("Total Count:" & Response.data("count")("total"))
        ' String �������� ���� ��� ���� ���
        Debug.Print (Response.Content)
    Else
        Debug.Print ("�߼۽���")
        Debug.Print (Response.Content)
    End If
Handler:
    Debug.Print "Error " & Err.Number & Err.Source & Err.Description
End Sub

