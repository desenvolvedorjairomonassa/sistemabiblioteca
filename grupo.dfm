object Frmgrupo: TFrmgrupo
  Left = 312
  Top = 162
  AutoScroll = False
  Caption = 'Grupo de usu�rios'
  ClientHeight = 453
  ClientWidth = 380
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 287
    Height = 453
    Align = alLeft
    BevelInner = bvLowered
    TabOrder = 0
    object DBTreeView1: TDBTreeView
      Left = 2
      Top = 2
      Width = 283
      Height = 449
      Align = alClient
      RowSelect = True
      StateImages = ImageList1
      TabOrder = 0
      ToolTips = False
      NovoItem = 'Novo grupo'
      OnGetSelectedIndex = DBTreeView1GetSelectedIndex
      DataSource = DMgrupo.DSgrupo
      RootID = 0
      IDField = 'idgrupo'
      ParentIDField = 'parent_grp'
      DisplayField = 'descricao'
      RootCaption = 'Estrutura do Grupo'
      Images = ImageList1
      ShowRoot = False
    end
  end
  object Panel2: TPanel
    Left = 287
    Top = 0
    Width = 93
    Height = 453
    Align = alClient
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 10
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Adicionar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 10
      Top = 88
      Width = 75
      Height = 25
      Caption = 'Remover'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object ImageList1: TImageList
    Left = 306
    Top = 140
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001001000000000000008
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FEF3DFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EF3DFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FEF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FEF3DEF3DEF3DEF3D000000000000E07FFF7FE07FFF7F
      E07FFF7FE07FFF7FE07F00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EF3DEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3D0000FF7F00000000EF3DEF3DEF3DEF3DEF3DEF3DEF3D
      EF3DEF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000FF7FE07FFF7FE07F
      FF7FE07FFF7FE07FFF7F0000000000000000000000000000E07FF75EE07FF75E
      E07FF75EE07FF75EE07F00000000000000000000EF3DEF3D0000FF7F00000000
      00000000000000000000EF3D0000FF7F0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FEF3DFF7FFF7FFF7FFF7F000000000000E07FFF7FE07FFF7F
      E07FFF7FE07FFF7FE07F000000000000000000000000FF7F0000E07FF75EE07F
      F75EE07FF75EE07FF75EE07F0000000000000000EF3DFF7FEF3D0000FF7F0000
      000000000000000000000000EF3D0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000FF7FE07FFF7FE07F
      FF7FE07FFF7FE07FFF7F000000000000000000000000E07FFF7F0000E07FF75E
      E07FF75EE07FF75EE07FF75EE07F000000000000EF3DFF7F0000EF3D0000FF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FEF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000E07FFF7FE07FFF7F
      E07FFF7FE07FFF7FE07F000000000000000000000000FF7FE07FFF7F00000000
      0000000000000000000000000000000000000000EF3DFF7F00000000EF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3D0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000FF7FE07FFF7FE07F
      FF7FE07FFF7FE07FFF7F000000000000000000000000E07FFF7FE07FFF7FE07F
      FF7FE07FFF7FE07F000000000000000000000000EF3DFF7F0000000000000000
      0000000000000000EF3DFF7F000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      00000000000000000000000000000000000000000000FF7FE07FFF7FE07FFF7F
      E07FFF7FE07FFF7F000000000000000000000000EF3DFF7F0000000000000000
      00000000FF7FFF7FEF3D0000000000000000FF7FFF7FFF7FFF7FEF3DFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000FF7FE07FFF7F
      E07F0000000000000000000000000000000000000000E07FFF7FE07FFF7FE07F
      FF7F000000000000000000000000000000000000EF3D0000FF7F000000000000
      0000EF3DEF3DEF3D00000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FEF3DFF7FFF7FFF7FFF7F000000000000EF3D000000000000
      0000EF3D0000000000000000000000000000000000000000E07FFF7FE07FFF7F
      00000000000000000000000000000000000000000000EF3D0000FF7FFF7FFF7F
      EF3D00000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      00000000000000000000000000000000000000000000EF3D0000000000000000
      EF3D00000000000000000000000000000000000000000000EF3DEF3DEF3DEF3D
      00000000000000000000000000000000000000000000803F00003F00803F0000
      3F00803F00003F00803F0000000000007F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7FEF3DFF7FEF3DFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FEF3DFF7FFF7F424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFEF7B
      FFFFFFFFFFFFFFFFE007FFFFE007FFFFC007C00FC00BFFFFC007800797F5FFFF
      C00780038BFAFFFFC00780019400FFFFC00780019801FFFFC007800F9FE7FFFF
      C00F800F9F8FFFFFE07F801FAF1F0000E07FC0FFD0FF0000FFFFC0FFE1FF007F
      FFFFFFFFFFFF0000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object FormPlacement1: TFormPlacement
    Options = [fpState, fpActiveControl]
    PreventResize = True
    Left = 313
    Top = 208
  end
end
