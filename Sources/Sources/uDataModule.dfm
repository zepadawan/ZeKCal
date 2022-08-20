object DataModule1: TDataModule1
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 289
  Width = 744
  object MyConnection1: TMyConnection
    Database = 'jfp_db'
    Username = 'jfp'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 16
    EncryptedPassword = 'A0FFB2FF9EFF8DFF96FF91FF9AFF8BFF8BFF9AFFCEFFCDFFCCFF'
  end
  object T_IMC: TMyTable
    TableName = 't_imc'
    Connection = MyConnection1
    Options.FieldOrigins = foNone
    Left = 144
    Top = 16
    object T_IMCID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object T_IMCLabel: TStringField
      FieldName = 'Label'
    end
    object T_IMCMin: TLongWordField
      FieldName = 'Min'
    end
    object T_IMCMx: TLongWordField
      FieldName = 'Mx'
    end
    object T_IMCColor: TLargeintField
      FieldName = 'Color'
    end
  end
  object DS_IMC: TMyDataSource
    DataSet = T_IMC
    Left = 192
    Top = 16
  end
  object T_POIDS: TMyTable
    TableName = 't_suivi_poids'
    Connection = MyConnection1
    BeforePost = T_POIDSBeforePost
    Options.FieldOrigins = foNone
    Left = 280
    Top = 16
    object T_POIDSID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object T_POIDSDate: TDateField
      FieldName = 'Date'
    end
    object T_POIDSPoids: TFloatField
      FieldName = 'Poids'
      DisplayFormat = '000.00   Kg'
    end
    object T_POIDSIMC_Calc: TFloatField
      FieldName = 'IMC_Calc'
    end
    object T_POIDSIMC_ID: TLongWordField
      FieldName = 'IMC_ID'
    end
    object T_POIDSEcart1: TFloatField
      FieldName = 'Ecart-1'
    end
    object T_POIDSEcart_Cum: TFloatField
      FieldName = 'Ecart_Cum'
    end
    object T_POIDSIMG_Graisse_BF: TFloatField
      FieldName = 'IMG_Graisse_BF'
    end
    object T_POIDSIMG_Hydrat_BW: TFloatField
      FieldName = 'IMG_Hydrat_BW'
    end
    object T_POIDSIMG_Muscle_BM: TFloatField
      FieldName = 'IMG_Muscle_BM'
    end
  end
  object DS_POIDS: TMyDataSource
    DataSet = T_POIDS
    Left = 328
    Top = 16
  end
  object T_DIABETE: TMyTable
    TableName = 't_suivi_diabete'
    Connection = MyConnection1
    Options.FieldOrigins = foNone
    Left = 280
    Top = 64
    object T_DIABETEID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object T_DIABETEDate: TDateField
      FieldName = 'Date'
    end
    object T_DIABETEHeurre: TTimeField
      FieldName = 'Heurre'
    end
    object T_DIABETEValeur: TLongWordField
      FieldName = 'Valeur'
    end
  end
  object DS_DIABETE: TMyDataSource
    DataSet = T_DIABETE
    Left = 328
    Top = 64
  end
  object cxStyleRepository: TcxStyleRepository
    Left = 536
    Top = 16
    PixelsPerInch = 96
    object Gras: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object T_PARAMS: TMyTable
    TableName = 't_params'
    Connection = MyConnection1
    Options.FieldOrigins = foNone
    Left = 144
    Top = 64
    object T_PARAMSID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object T_PARAMSLabel: TStringField
      FieldName = 'Label'
    end
    object T_PARAMSValue: TStringField
      FieldName = 'Value'
    end
  end
  object DS_PARAMS: TMyDataSource
    DataSet = T_PARAMS
    Left = 192
    Top = 64
  end
end
