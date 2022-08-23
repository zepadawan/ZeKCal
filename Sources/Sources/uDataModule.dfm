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
    EncryptedPassword = 'A0FFA5FF9AFF8FFF9EFF9BFF9EFF88FF9EFF91FFCBFFCAFFC9FF'
  end
  object T_IMC: TMyTable
    TableName = 't_imc'
    Connection = MyConnection1
    Options.FieldOrigins = foNone
    Left = 144
    Top = 56
    object T_IMCID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object T_IMCLabel: TStringField
      FieldName = 'Label'
    end
    object T_IMCMax: TLongWordField
      FieldName = 'Max'
    end
    object T_IMCMin: TLongWordField
      FieldName = 'Min'
    end
    object T_IMCColor: TStringField
      FieldName = 'Color'
    end
  end
  object DS_IMC: TMyDataSource
    DataSet = T_IMC
    Left = 192
    Top = 56
  end
  object T_POIDS: TMyTable
    TableName = 't_poids'
    Connection = MyConnection1
    Active = True
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
      DisplayFormat = '###.## Kg'
    end
    object T_POIDSIMC_ID: TIntegerField
      FieldName = 'IMC_ID'
    end
    object T_POIDSIMC_Calc: TFloatField
      FieldName = 'IMC_Calc'
    end
    object T_POIDSEcart_Poids: TFloatField
      FieldName = 'Ecart_Poids'
    end
    object T_POIDSEcart_Cumul: TFloatField
      FieldName = 'Ecart_Cumul'
    end
    object T_POIDSIMG_Graisse_BF: TFloatField
      FieldName = 'IMG_Graisse_BF'
      DisplayFormat = '00.0 %'
    end
    object T_POIDSIMG_Hydrat_BW: TFloatField
      FieldName = 'IMG_Hydrat_BW'
      DisplayFormat = '00.0 %'
    end
    object T_POIDSIMG_Muscle_BM: TFloatField
      FieldName = 'IMG_Muscle_BM'
      DisplayFormat = '00.0 %'
    end
  end
  object DS_POIDS: TMyDataSource
    DataSet = T_POIDS
    Left = 328
    Top = 16
  end
  object T_DIABETE: TMyTable
    TableName = 't_diabete'
    Connection = MyConnection1
    Options.AutoRefresh = True
    Options.AutoPrepare = True
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
    object T_DIABETEHeure: TTimeField
      FieldName = 'Heure'
    end
    object T_DIABETEValeur: TSmallintField
      FieldName = 'Valeur'
      DisplayFormat = '###  mg/dL'
    end
    object T_DIABETEApres_Repas: TShortintField
      FieldName = 'Apres_Repas'
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
    Top = 8
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
    Top = 8
  end
  object T_IMG: TMyTable
    TableName = 't_img'
    Connection = MyConnection1
    Active = True
    Options.FieldOrigins = foNone
    Left = 144
    Top = 104
    object T_IMGID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object T_IMGLabel: TStringField
      FieldName = 'Label'
    end
    object T_IMGGraiise_Min: TFloatField
      FieldName = 'Graiise_Min'
    end
    object T_IMGGraisse_Max: TFloatField
      FieldName = 'Graisse_Max'
    end
    object T_IMGHydra_Max: TFloatField
      FieldName = 'Hydra_Max'
    end
    object T_IMGHydrat_Min: TFloatField
      FieldName = 'Hydrat_Min'
    end
    object T_IMGColor: TStringField
      FieldName = 'Color'
    end
  end
  object DS_IMG: TMyDataSource
    DataSet = T_IMG
    Left = 192
    Top = 104
  end
end
