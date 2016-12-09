VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "fcdSysConfig"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Attribute VB_Ext_KEY = "RVB_UniqueId" ,"3DB0F74A02E0"
Attribute VB_Ext_KEY = "RVB_ModelStereotype" ,"Class Module"
Option Explicit

'ʵ��ϵͳ���ù�����


'�õ�ϵͳ������Ϣ��
'������
'return: recordset
'����ϵͳ������Ϣ�ļ�¼��
'##ModelId=3DB156C4032D
Public Function GetSysConfig() As Recordset
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.SysConfigManager")
    Set GetSysConfig = objMngr.GetAll()
    Set objMngr = Nothing
    
    '������Ϣ����:
    '�Ƿ�������дʻ㣬Key=HotWords��Value="true"��
    '�������дʺ�Ķ�����Key=HotAction��Value="1"����1�Ǿ����û��������û�ѡ��������ͻ���ȡ�����ͣ�2�ǲ������û���ֱ�ӽ�ȡ���дʻ㲢���ͣ�3�ǲ����Ͷ��ţ������辯����ʾ����
    '�������ų��ȣ�Key=MsgLen��Value="60"��
    'Ⱥ�����ų��ȣ�Key=MsgsLen��Value="60"��
    'IP��ַ�Ƿ�󶨣�Key=IPBinding��Value="true"��
    '�ʼ��������ã�Key=EmlFilter��Value=""��
    '�ʼ����Ѽ����Key=EmlNtfWait��Value="5"������λ�����ӣ�
End Function

'����ϵͳ������Ϣ��
'������
'rs: recordset
'ϵͳ������Ϣ����ļ�¼��
'##ModelId=3DB156D50233
Public Sub SaveSysConfig(rs As Recordset)
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.SysConfigManager")
    objMngr.Save rs
    Set objMngr = Nothing
    
End Sub


'�������Ա����Ϣ��
'������
'rs: recordset
'����Ա��Ϣ�ļ�¼��
'##ModelId=3DB15C57006C
Public Sub SaveAdminInfo(rs As Recordset)
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.SysConfigManager")
    objMngr.Save rs
    Set objMngr = Nothing
    
End Sub


'///////////////////////////////////////////////////////////////////////////////////////////////
'// HotWord
'////////////////////
'�õ�ϵͳ���дʻ��б���
'������
'return: recordset
'����ϵͳ���дʻ��б�
'##ModelId=3DB15F7E02D2
Public Function GetHotWordsList() As Recordset
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.HotWordManager")
    Set GetHotWordsList = objMngr.GetAll()
    Set objMngr = Nothing
    
End Function

'ɾ�����дʻ㡣
'������
'ID: long
'���дʻ�ı�ʶ
'##ModelId=3DB15F8F02A3
Public Sub DelHotWord(ID As Long)
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.HotWordManager")
    objMngr.Delete ID
    Set objMngr = Nothing
    
End Sub

'�������дʻ��б���
'������
'rs: recordset
'���Ĺ������дʻ��б�
'##ModelId=3DB15F9D0320
Public Sub SaveHotWord(rs As Recordset)
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.HotWordManager")
    objMngr.Save rs
    Set objMngr = Nothing
    
End Sub

'���ؿյ����дʻ��б���
'������
'return: recordset
'�����дʻ��б�
'##ModelId=3DB15FAA013B
Public Function GetEmptyHotWord() As Recordset
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.HotWordManager")
    Set GetEmptyHotWord = objMngr.GetEmpty()
    Set objMngr = Nothing
    
End Function

'##ModelId=3DB45FC0022B
Public Function GetHotWordByID(ID As Long) As Recordset
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.HotWordManager")
    Set GetHotWordByID = objMngr.GetListByID(ID)
    Set objMngr = Nothing
    
End Function
