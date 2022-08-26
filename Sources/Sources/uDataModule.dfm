object DataModule1: TDataModule1
  OldCreateOrder = True
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
      DisplayFormat = '000.00  Kg'
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
    Left = 496
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
      DisplayFormat = '00.0'
    end
    object T_IMGGraisse_Max: TFloatField
      FieldName = 'Graisse_Max'
      DisplayFormat = '00.0'
    end
    object T_IMGHydra_Max: TFloatField
      FieldName = 'Hydra_Max'
      DisplayFormat = '00.0'
    end
    object T_IMGHydrat_Min: TFloatField
      FieldName = 'Hydrat_Min'
      DisplayFormat = '00.0'
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
  object ImageList_16: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 1049168
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000023744558745469746C650043616E63656C3B53746F703B457869743B
          426172733B526962626F6E3B4C9696B20000038849444154785E1D906B4C5367
          18C7FF3DBD40CB1A2E32B55C9D598B4CA675D8D13836652E9B0359B67D589665
          3259E644A52571644474CB4CB6ECC23770C4449DD38D2885005E4683AB69C616
          8DA12384264EC8AAAC0C9149A1175ACEE9E939CFDE9EE7E477F2CBFFB924E720
          E6E943CC3B8895D12B00A0FEE3D08167A75A5BBAEEB71D9D081E6B4DA549FBDD
          A3CEEFDD1F3658016818AA98A71FD1915E202DE980A19D741E3EF6E0F8A7FC7F
          673B6979E002C5BC43B4C2581EB8480BE7BA68E6441BEF3B72F03300990C8E1D
          5016554E7B55D6C1ED9543C6C2B5BB739FDF025988838424E4240F10A0D2EAA0
          D26540AD37203CFE17C2C187A3EDBFDE7CF3DAD4748403A06EA8A8E830AC5FB3
          3B7BAB1901B717AE23DFE1CEC5EBEC90A0E0EB71A3CFD981C0B017C6F252180B
          D6BD74BCFA856E003A0CBDFD966DF250532AD4FF038DB734D18557DF21CFB08F
          2E37B5D370ED5E72D7D52BEEF9654CE9F91C1FD392EB0C4D3A0E4BE7F6ECD909
          CFDEFAD381AF4ED0A3D35FD399E272BA3F3D478F971234FD2044BDCE930AF798
          CF2FAED0DF5373CACCFCA92F2970B29DDCAFD7F56B48945E918201C41738945A
          2D581C7461ADA3192AB50AD64F9A010272730CC8D4AA313BE44289D58CF85D3F
          2411504BB28D93845489145E041F9CC1863C09A11BD7E1EFEA86240339463DB2
          B3F59025C0DFD98DD0C83594E6886C360831F408523265D208BC0021B20A35A7
          82B8BC0429C2239A10D812417988007088B14C8A8421EA75A094044A8A48F200
          17E78587629220B370E69F2884EA3750F07E23245946868E43A64EA3B8695F23
          F8EA7A046763EC780AC9640AF155FEB1269AE0BD91AC8CFDF910108E26F15A5B
          33788D1E860CF6CDE7CF225D45FB3F02A0C7CE36076E5CBD84825C3562A20E4B
          097E0CAD051B5FFCA97C9BE4ABAEA05B2FDBE9E6BE0F880F8568FCDB0E1AA9AA
          646C579C654AEF564D15FDB96333FDBCC94A8E751B6A0140DF5168B9E42A7B86
          266AB6D2ED1A1BF559CAC853B58DFCB576F2D7D9D3AE64B777D96862D716EA2F
          2BA76F4CE62B008C1A00C2F9C57F9D8DA2C99212C5E72C85323699F320A77FD2
          72040021DF9885F56BF2204457706F9EC74C4CF2F744169A012430DBF21E00A8
          2B754F98BEC82EEEED7AF2291A306FA451EBD3346633938FF13BF341969D62BD
          CF738AAF6ED6EA4B006882CE77A14ABFD255D2799903606830E4EF28E274070C
          1C67D74255041044C25C9CE43B4149F8B16735F41B8038DB9300E07F6924ECFB
          01D589CC0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000021744558745469746C65004170706C793B4F4B3B436865636B3B4261
          72733B526962626F6E3B6463C8680000037D49444154785E4D8E7F4C94051CC6
          3FEF7B77E02073EA92742577579B684891E62AB6C4526B6013696BC9DC5A0B33
          D0322DA716D3CA94A21A8E96E976AEB654688E409B46B859CC249500E3F81588
          234EE0F875DC1DF7A3BB7BDFF7DBC16AEBD9F3D9BEFF3CCFF7C13555CB58A801
          40014CC5E5696BF638D24FBEF7EDF2D683550F7B0E5666B4969C5A5EBBEBCB65
          2F0209803A116E6438F82377A66A60385007A0E4EFB2A5BC51B1B4AEF4EC5AB9
          D476583A87AA642C7055BA47CE4A43F72752713157F67D93DE54B0DFBE04308D
          867E9E290050725F4BBDB7F8E8B29EAA86B7C4E5BF203DDEE3D23E71585AC6F6
          48E7E4C7D2E777C870A05E7E68DE277B4F668C6EDE6BCF00D4017F350A607EF5
          48DAB99CECBC9CF4343BC3E1264CAA60C282AAA8288A028A30313E852DE509EE
          0C4D72EEF26967CD17FD4F0EDE0A064DF9BBEDEB6CD6C51F3C9DF5382EFF1540
          104014216E500C2ED6DDA4F67C3BEDB79BC9C95EC3E8F8784AD28288BBADC1D3
          6C4E98652A7C2C7D2543816674430304C4885B0755E1CC99EBCC51D750F14E35
          DBCB32E91DF98DCCA5ABE8FCB36733E0500D3132EF9EAB108C7AE9ED1BA6B4AC
          969F2E39896A11CE5F68212529975D5B4A395A59C40B79CF6049D0489AAD81AA
          3C0A9854436741140FE148809AEA16CA8AAEA34C65F1E9E7F524EBEBD99A7F80
          53751FB2707118EB836642311F31C63174497C286BEE6C55D3F48971DF2088C1
          A60D6BF9BAB6849D0547D8FD520D2F3F5F822FD8C7AFCEEF58B16A11FEC82831
          3DC6A87F8868C488745C9D0C9AF5A8D2E51EF15BE72FD248B127E2F5FE8DE3FB
          FDEC28280755E1FDCFB691BF310B6FC48566C4C030F08D458984B40E4057837E
          ADAAA7CB87A0E2090EB2E491594C1A4DD45C2EC779AB0E53B287C4399384A353
          718288A8F4767B09F8F4F380069094BBDD7AB3E474869CB8B1428E5DCB90AAB6
          0DB2E59055B2B621C72EAF93134D99723C8EE3F79572A83A5336EEB439EF9A67
          990FA82A1071F7855EF9E35AC0D3EB0C010A9EF000799B56F1EEDBAFC7BF87D0
          0D411185BEEE30AD8DFE88AB2B501CF0C4FC5706DE34CC0D7F15E9AB53BF6A17
          784ED78C4AB72BF6803DDD82B6B013D5A420064CB875FABB628CB8A21DEEDBA1
          A2D6FAB11B8066480C7EE92F045000737CD6BCA736DFB77F7D616A63EE769BCC
          B0C326CF6E4D6D5B5D70FF47C9732CF700164099CE4D3373FCA76CAB43052CFF
          62065440001D884E130F19FC4FFF00FE20CB5D5DF1FFF30000000049454E44AE
          426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000027744558745469746C6500526566726573683B5265706561743B4261
          72733B526962626F6E3B52656C6F6164CD4DF6E90000037749444154785E6593
          6B4C537718C69F73E885622F4069C9B02DA1ADB60C2133D471DDD451D8257C02
          2661B3719912A3092163898BDBF8B06422DB74612612CDE64CDCE2A698CC2DA2
          0C541C9918645BB701EB3414B99536E08022A597737ADE71927E58C693BCFFBC
          F9E5799E2FFFBC0C364A64FFE794988DE6CF6F55032034567433EF7596AB37E7
          A85AC0302FB22C1C448020D02F3C47BD8F3C4B9F76BC3314FCE44A05AD330844
          585F80B3BDAF00007BB2CBE9BC70C73533E0F998BCF33F5030FA9B38343EFF3D
          F58F1EA7737D0DB347CF943A456F44F06085BF87F7BF28054470A2AB72CFE5C1
          43F4C07F999EC4876989FB891E477B6921DA438BDC6D5A37D398EF22755EDD4B
          CD271DF5626689BB83B74E3920693AB643AF516BCFE7659723439B0E6F6008D7
          6F0F60E46F0F44E5DB6D28DABE1DF9D66750F8F4F3989B0F7C597DC0329026DD
          153878BC80D8CCEC4D2DD9FADC145D8606EE078338FBF5377CFFDDC10FA7C717
          AC33138FAD3F0F0D1FB976EBC798D7EF86C1900AAB292F45A393BE0D800DADC5
          20E1E3F4B22E3D13ABDC1CDC7F8D61666EAEADEFCCEC31001C44011DCA237266
          F88FB18F5277CB91AE27C438FE2500EF46C25C9CE5B9B84DA10462F12798F64D
          63C5C79D17C3CBDC5D4A7C27EBEE5BF86ABD18E3C11E90F2112251CE044071E5
          84572E0947F8C8C44A8F54A94843B24C0685542E88414E0893B3DEACCA2FD6FB
          08B4492661118AFD038A876032EA5587DB75CB828065361CE2A67D8100FC2137
          AC66234C76CD7E00529DDCC9DCBC34115E5E8C746CCBCD455DCD0B880B1C1809
          8FC6FDB5D0E9B4181B9D6D4FB239B45B55AA9462953E0C8D3C0B6BAB5462B029
          42AA34B94FFB540A3B726FFE7E7246AC9E74BF6B92A4045EE0F170E657F47C37
          35E5BEBE788029ADDE6CDE569239BA65475461B66402410BA6BC8B989CF46375
          758DF38E2E952B53E5B6AD858A0BF93BA31075B32B04CFF08ACBDD1DBC240259
          952BA7F1607B01B575DBE9DB87657463B281067CCD7471701FD535E7F603D0D7
          34D9FBDB6ED8A8F5AA899EAD4D1599120083C4935C5663A8AF6BD9E26FEAB4D0
          07D72C74EABE95CEB94BE8707B1155BC96E372546595B85AF3B8CA43199CA558
          510440E278550D54BD99932881D468571BCA6A0D9FED6C308EECDE6BA25DAF9B
          E8B93DC63F2BDFB0B4025057ED339F2EA8569E06A0103385752A301BCF1832B1
          1D4052820B006200E2FF615C82E35FC02B8FD5CBC3AEEB0000000049454E44AE
          426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000019744558745469746C650044656C6574653B52656D6F76653B4D696E
          7573EBA98F410000031A49444154785E7D925F4854591CC7BFE7DE3BA3B9EEBA
          0D3BDBE85A3AA5C16A85586DB4B49459490FBD444B62C63EB450ADECD243D4DA
          4345F4982804D58B0F1541FBB02C0B1995AD44160A8B59499A8330E3486AEA4E
          EBCC9D3F77EE3DE7F43BF78A8F9D3F1CB8E77EBE7C7E3F0E8B9816D4585F5CC0
          00B0B6AE87352B8ABF3CAA33A311BA5ECD20B9E43CEAF07CDFC274ECFACD8B2D
          9300C4B86949179C48E7A1C0FAC6E68253D7063ADB6FBD726E3D8BCB0763F372
          E8BD295FCC99F2E1DB0579FBF9946CBFF93279B2A3F73800BF6214CB145CD770
          D8BFE3D0A9BFD7AD0934EDF97E0D3863B0B8844D5B69F90C06BFC6C0F30EFA06
          A6109D9ABFD773E34CF3E4E86046DDEB273A9F76568583BF36ED0C637AD18690
          804680DAF04421A404E52054E247EFD3284646631DDD679BCEB11FCFDEA90D55
          54BDFAE9E0063D9AC843D73417D469330DCB43081522C0395019F0E3CE9F23F6
          D8F0B32DACF5F2A3EB0DDBD69D280EAD84E500BA0E18068530461BCB830BCF82
          73E19AD98945F4F40E771942E8DB4B02C598331D3CF96708EF6712F8D4089506
          B07BDF667C55F21998BE62AF418D2A2716A9ACEDC2577F6BF04AD0DD52BC2E33
          AF177E9F8E63571E2395E130A093955666D836F77FC8E46173CF7755B0044585
          3EA2D4F202A49AEA945E98CD0512A6806353503E67C54CD3DA288C02947D1344
          CBA57B64A0B93F1A7E03B66543231B5DD7C1C86875C52A388E4436974736938D
          1BB9B4D9BF30BBB87165791075DB6A51E8F31A48CBB3905063D9C07238523907
          FFCF27915EFCAF976D3A70A1BEAC7AEBE0D65DB53EEED54B06DEA9A65A588285
          106E9070045E3F7FEB4406FFDAA2AE0BBF6BEDEE585D15FEE5DBCD6B91E79260
          E95A80B632904B0E028A9698781D476CF4CDD5A1BB6DBFAB00AD2850F945CDFE
          8B7F9486CBF7D5D4872135A6743DCC2D4312CE20487F62248E7791E8FDA1BB3F
          1F0190D4E66C29328958EA4DCFF9E6C9B1C88DFEFBC3F6E4F80C72664EE1AE7B
          266D211E99C1C0A39799C8BF03A7096E01909A2596CD399EE3D73EA6A9722AB6
          B76D2A0A56B7FA0A3EFF019A5EEA4A7367D6B692FDC977C3DDD32F6E8F03C811
          EC3A7E0415947A6BBEDAC8770000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000000C744558745469746C650052657365743B64CF80690000
          037C49444154785E7D537D4C93471C3E9DC84CB075D9E660B620BCC8AA282B5A
          A5B448410ACC5293452A5DA19DA8630A5BAD6CD6CD40834528858A0E025DE563
          D16D2A1FBA2053C10E862351DC47A81998322653B711179431981A4AD99EBDEF
          9BB23F5CB24B9EDC2F77F77CFC2E77E47FC63C1AF39FC0BCFF102C6764A4AC39
          9194B76C22B6B3492C715F79CC92AAF6578A6B3B365FFFF0B262D6E154CCDA3B
          15D7ED1D9BCD05F6382E2354DF9D46EABB9584143648C8D46C1F99FEDB4D1897
          830E89BCF10BCDAF3D8365B835761E939E7E162363EDE87557E0E32BBA5F2A5B
          E572E6EC71A78290FC6A1199F05E61C9864A91DADEA6C5CDD1D3A045F1BBF74B
          DCF774E281C78909EF57F8F3AF6FF1C3BD16B45CCBC591D6E40CB6ADDD65516C
          6CE51B5450619DFCD1D7C375189BBE88EEC152583E514153B086015D67E0C668
          0DC667BA688353A8BFFCDA237DE9FA40A235091881A7B20E0A8E9CE83460F471
          0BFA6E9720BF2ADEA3783BC418A709A2A4EA402A790FEF706EB9D4DB35508C31
          CF05385D66947C9A504154FB294660E1B6FDE183EDFD7BE19EB4A1BA4D838C03
          1107E8753F269D0F0B958650B3AD598D9F1ED6C175D781432765030CD99F0677
          8B3E64EAFCF0167CFE73128C761956443F13E4DB9BFF87F72ADB66BC8AB75C7F
          3416439395181A77A0B0216E86ECB18826F2AC22BC55B11E67DC6234DD12A2A0
          2E11FB8EC520FF98F8A15C1DC6BDEFE9622F395543051B6B64E8FD6D072EDD7E
          15EFD688A7C8C6CCC0F78A1A537163DC8AA61F4538351C09D783C368E8CCC60E
          93B08489EE6BC13FC7BCD67CFC9216CD2342D4F7899157BE6E902C7ED68F9B90
          FDC29DEAAB1138E15E8593432BE1F86E15761547DF5D16CE592A8C0F7C5E92C6
          5F9E655C6D2C6A48F57CE67A9D365903EBD93868DF5FFD0113CD2F3A8DABCD3C
          C4C74737052CF2ED2F236D57844E961EB26167917066AF4D82A3ADE938D79F83
          73239B607346E2CDD2B58F25CA6561736F3E6043FA921E535B302C1D2F61AB5E
          D043AF2D551956F69CBEB61DBDA30674DCD1A069580ACB4501765BA390A20BCD
          61DB136DE330220B28F1A298E4DCE7BC3A53A45794F2626C5266A82ECF1A8346
          572CAABF0987F90205BD9D82EA9D15F7A45B796A9AF3346BBE4EB5782EC5A228
          65406DCAF6B05ABAE6246753A68D19FCEF13B28291A80D864CC31F90A6F3AAF8
          020E6FEE7DA4EC0C25FF0EDF77F5F761816F66D4B93E0430AE4F7EEB7F004FCE
          9AEBD9E212700000000049454E44AE426082}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000030000
          000B4541B1FA5B6DDAFF4557D3FF4559D3FF465AD4FF465BD4FF475CD4FF4A5F
          D5FF687ADDFF464BB6FF7A79C1FFF5EFE9FFF7F0E9FFF6EFE9FF000000020000
          000A433FABEC6576DAFF485ED5FF475CD5FF485DD5FF5468D9FF687BDDFF8496
          E5FF5255BAFF8080C7FFFAF8F7FFF7F0EBFFF7F1EBFFF7F0EBFF000000020000
          000839378FC56F7DDAFF4E63D9FF5167D8FF7084E1FF7C8FE4FF7D90E4FF5A5F
          BFFF7D7CC5FFFAF8F7FFF8F2EFFFF8F1EDFFF8F2ECFFE9DDD8FF000000010000
          00062A28668F747DD6FF6F83E1FF8092E4FF8295E5FF8295E5FF8295E6FF3A3B
          A9FFE8E2E7FFEDE3DEFFF9F2EFFFF8F3EFFFE8DDD9FF6F68ADFF000000010000
          0004151430486F72D1FF9FB0EDFF8699E6FF879AE7FF879AE7FF889BE8FF4E53
          B7FF8179B0FFDCCBC4FFEADFDCFFE7DBD7FF6F68ADFF494DB3FF000000000000
          0002000000075757AEDAA8B5EBFF90A3E9FF8D9FE9FF8EA0E9FF8EA0E9FF8696
          E4FF4649B0FF7E75ADFFC3B1B7FF6D66ABFF4A4FB4FF8799E6FF000000000000
          0001000000042324455B7E82D9FFB0C1F2FF92A5EAFF93A5EBFF93A5EBFF93A5
          EBFF8A9AE4FF4F54B6FF3534A2FF565CBBFF8D9FE8FF8FA2EBFF000000000000
          000000000002000000065455A2C6A8B2E9FFA8B9F0FF97AAECFF98AAECFF98AA
          ECFF98AAECFF97AAECFF97A9ECFF96A9ECFF95A8ECFF94A7ECFF000000000000
          000000000001000000030F0F1C286B6EC5ECBDCAF2FFACBEF1FF9DAFEDFF9DAF
          EEFF9DAFEDFF9DAFEDFF9BAEEDFF9AADEDFF9AACEDFF99ABEDFF000000000000
          00000000000000000001000000041D1D3646787BD5F9BFCBF2FFBCCCF5FFA1B4
          EFFFA1B3EFFFA1B3EFFFA0B3EEFF9FB1EFFF9EB1EFFF9DAFEEFF000000000000
          0000000000000000000000000001000000041D1E36457074CBEEB0BAEEFFD0E0
          F9FFB5C6F3FFA5B7F0FFA5B7F0FFA3B6F0FFA3B5EFFFA1B4EFFF000000000000
          000000000000000000000000000000000001000000030E0F1A235E60AAC89196
          E4FFC4D0F4FFD7E7FBFFC7D7F7FFB8C8F4FFB3C4F3FFA6B8F0FF000000000000
          0000000000000000000000000000000000000000000100000002000000052728
          4656686CBCDA878CE1FFAAB2ECFFC4D1F4FFCAD6F6FFDDECFCFF000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          000300000004161728323E3F6E825F61A9C56366B2CE797EDBFC000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000200000003000000040000000500000005000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000001}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000F6EFE9FFF6EF
          E9FFF4ECE7FF7977BFFF3F43B1FF6578DCFF4A5ED5FF475BD4FF465AD4FF4559
          D3FF4357D2FF4356D1FF576BD8FF3830A4FA0000001200000005F7F0EAFFF7F0
          EAFFF7F0EAFFFAF7F7FF7A7AC3FF4549B2FF7789E0FF5D70DBFF5063D8FF485D
          D5FF465BD4FF475BD4FF6372D8FF38309DED0000001100000004DECEC8FFEADE
          D8FFF7F0EBFFF7F0EBFFFAF8F7FF7775C0FF4D51B6FF6B7FDFFF687CDEFF5F73
          DBFF4E62D6FF4D62D7FF6A77D5FF302B84C80000000E000000036D65A9FFD8C6
          BFFFEADFD8FFF8F2ECFFF7F1ECFFEDE9EEFF2F2D9EFF6F84E2FF6E81E0FF6B7F
          DFFF677BDEFF6376DDFF6C73CFFF23205F940000000B00000003484CB3FF6C64
          A9FFD8C7C0FFE7DCD7FFEBDFD9FF7E75B0FF4245B0FF7589E2FF7287E2FF7083
          E2FF6C80E0FF889BE8FF5F5FC4FF11102D4E00000007000000028698E6FF474C
          B1FF6B64A9FFC2B0B6FF796FAAFF3A3CA8FF7587DEFF7A8EE5FF778BE3FF7489
          E3FF768AE3FF99A5E5FF4643A0DC0000000E00000004000000018EA1EAFF899C
          E7FF5157B9FF2E2C9CFF454AB0FF7C8EE1FF8295E7FF7F92E6FF7C90E5FF798D
          E5FF9EB0EDFF6C6ECBFF1C1B406100000008000000020000000093A6EBFF91A4
          EBFF8FA3EAFF8DA0EAFF8B9FEAFF899CE9FF859AE8FF8397E8FF8194E6FF93A5
          EBFF9CA5E3FF464497C80000000C00000004000000010000000097AAEDFF96A9
          ECFF94A7ECFF91A5EBFF8FA3EAFF8CA0EAFF8A9EEAFF879BE9FF99ACEDFFB2C0
          EEFF5C5CBBED0C0C1A2D000000060000000200000000000000009BAEEEFF9AAD
          EEFF98ABEDFF95A9ECFF93A6ECFF90A4EBFF8EA1EAFFACBEF2FFB6C3EFFF696B
          CBFA1818324A00000007000000020000000000000000000000009FB2EFFF9EB0
          EEFF9CAEEEFF99ACEDFF97ABEDFFA6B9F0FFC7D8F7FFA8B1E9FF6466C4EE1A1A
          334A000000070000000200000001000000000000000000000000A4B7F0FFAFC0
          F2FFB1C2F2FFC0D1F6FFD2E3FAFFBFCCF2FF888EDEFF5556A6CA0D0D19280000
          0006000000020000000100000000000000000000000000000000DCECFCFFC8D5
          F5FFC1CEF3FFA5AEEAFF8085DEFF6163B7DA2526475B00000007000000040000
          0002000000000000000000000000000000000000000000000000787CDAFC6064
          B1CF5C5EA9C63A3D6D8415162734000000060000000400000002000000010000
          0000000000000000000000000000000000000000000000000000000000050000
          0005000000040000000400000003000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0001000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000200000004000000050000000600000007000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0003000000060000000B0000001000000015000000180000001A000000000000
          0000000000000000000000000000000000010000000100000003000000070000
          000E0000001706031B4D0F084595180B69D11A0B6FD91E0E87FF000000000000
          000000000000000000000000000100000001000000040000000B000000150B06
          2E6B1C0F76E11F148FFF1C199AFF1A1EA4FF1A1FA5FF1823ACFF000000000000
          0000000000000000000100000001000000050000000D040311361C0F6ECF2119
          96FF1D21A8FF1C27B2FF1E2AB4FF202DBAFF212DBAFF232FBDFF000000000000
          00000000000000000001000000050000000E0A062455241788F02022A5FF202B
          B5FF2231BBFF2432BDFF2533BDFF2533BDFF2533BEFF2533BEFF000000000000
          000000000000000000040000000C0A072553281C93FA2329ADFF2532BCFF2735
          BFFF2735C1FF2836BFFF2836C1FF2836C0FF2836C2FF2836C0FF000000000000
          0000000000020000000906041638281E8CEE262FB2FF2935C0FF2A38C1FF2B38
          C2FF2A39C3FF2B39C2FF2A3AC2FF2B3AC3FF2C3AC3FF2C3AC3FF000000000000
          00010000000500000010241B77CB2B2EAFFF2C3BC2FF2D3BC4FF2E3DC4FF2D3D
          C4FF3140C5FF4556CFFF4F5ED2FF4454CEFF303FC7FF2F3EC5FF000000000000
          00020000000A110D3465312BA5FF3040C4FF2F3FC5FF2F40C6FF3041C6FF3344
          C7FF4B5ACFFF434ABBFF3D41B2FF444CBDFF4A5AD0FF3344C8FF000000010000
          00040000000F2C2489DD323BBBFF3344C8FF3243C8FF3244C8FF3444C9FF4B5A
          CFFF4046B6FF9597D4FFE8E8F6FF8081CBFF4147B8FF4D5ED3FF000000020000
          00070E0C294E3A36ACFF3A4AC9FF3546C9FF3646CAFF3648C9FF3748CBFF4349
          B9FF9597D4FFF9F4F1FFF5ECE6FFF9F5F4FF8182CBFF4046B7FF000000020000
          00091F1A59924044BBFF3E4ECCFF384ACCFF394CCBFF3A4CCCFF3B4DCCFF3B3E
          AFFFE3DADCFFE7D9D1FFF4EAE4FFF4EBE4FFF9F5F4FF7F81C9FF000000020000
          000B2F2882C6444FC7FF3D50CEFF3C4ECDFF3C50CFFF3D50CFFF3D51CFFF3B43
          B8FF6E68AFFFD6C2BBFFE9DAD2FFF4EBE5FFF4EBE5FFF9F6F5FF000000030000
          000C3A36A2EC4958CEFF4052D0FF3F52D0FF4053D0FF4054D1FF4155D1FF4255
          D1FF3940B4FF6D66AEFFD7C2BCFFE9DBD3FFF6ECE6FFF6ECE5FF000000030000
          000C423CAFFA5061D5FF4154D1FF4256D1FF4356D2FF4357D2FF4458D3FF4559
          D3FF465AD2FF3E43B5FF6D67AFFFE9DAD4FFF7EDE9FFF6EDE9FF}
      end>
  end
  object ImageList_32: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 1049240
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000040002
          060F00050C1700050C1500000408000000000000000000000001000000000000
          0000000000070000061000040B1700040A150000040900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000207120615253B0E28
          45641133577A0E2F5271081D3650020915240000010300000000000000000003
          0B16051528420A2446690D2E54770B294C6E0418304C00061222000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000308140C203853255680A53479
          B2D73986C4E6337DBBE1256199C512335779020B152100000001000309180D22
          3C58225381A73076B4DC317EC4E42971B4DA1C528ABB0C2B517C010815290000
          0002000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000040B120C20364D2B5A86A352A1DAED62C1
          F6FE62C3F8FC58B9F7FC4AA6ECFA2A6BA5C00C284764020F20350B233F5B2A5B
          88AA4C99D0E95FBFF7FE5CBDF9FB4EAEF5FC3B90DEF62564A6D00B274B680006
          101C000000020000000000000000000000000000000000000000000000000000
          00010000000300000000000000010513213522456A8F4988BCDB6DC4F8FD79D0
          F6F370C4E7E966BFEEEE5CBDFBF93C8CCADD194876A3102E5489234D79A84484
          B7DA64B7E7F675CEF5F26EC3EAEB60B7EDEF4DABF4FC388AD4F51A48789E0613
          2844000004100000000000000000000000000000000000000000000000000000
          0001000101040000000000000102101A29442F4B69A148769CC95591B1C2558C
          A7AF4D7D96A6497E9EAF4487B0BA356F99B524496EA8233E61AB325375BB4170
          92BD4D85A7B85189A6AE4B7D96A3467B9AAF4080ADC73573A6CA22466B9C101A
          2C580202081B0000000000000000000000010000000100000000000000000000
          000000000003000000000000000115151A3B2F343C81323C478820323B5F1526
          303E13212B39162630421A2D3A521F2F3B6728303B7D30343E92323843952B34
          40791E2C375514232F3A101E292F1626314222343E642837447B222B35731618
          1D4E0506071C0000000000000000000000020000000000000000000000000000
          0000000000000000000000000000100A0823241A15512418135B0E07043B0000
          000D0000000101000009100804301C130D4A21191550241E1A5928201D642115
          12570A03012D000000060000000001000009140A07352719115D20161150110D
          0A2E0302030E0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000401000A130A052823160F4F241912580F0C
          0A27000101000705041125191353281A155B140E092E0B09051D18100D392316
          10511A110D440807071B000102010201010A1D120E463120186B1A0F0B3D0402
          000E000000020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000501010D1C140E3A312219602014
          0E3F0701000C110905212F20175F271913510804021300000000080302121A11
          0C36261A124D1D110B3B090301100C0501152518114C2C1E185F110908270000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000B0400162210053E260F
          03421C0902321D0A0136230E0243140500270200000400000000000000000900
          000E1E0D02342813064B210D023D1D0A01321D0B0034170A002B0601000C0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000002080A0E1C212127543531
          367E3C36398B3530338025242A6513171F4109101A2B060F1922040F1A1F0C13
          1C2D21222658363236853E373A94343034831E1E245A0A0C112C000102080000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000004060A102130422F4F6D99486A
          8ED5527090E9496685D634577BB323486A911C3E5C7E1B3A5A771A3D5E792243
          64862E4F72A7406084CF4D6A8CE5446388DB2A486DA90F2742610009101A0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000005090F132A3D51316187AC467C
          AAE24B7DAAEB42709BD6346693C02D628FB62F6694BD306799C62F6293C12D5D
          8DB82E618EBD376A99D04071A1DF3E6FA2E02A5889BE1334587A010D1A250000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000205090C1C28361E435B712955
          728E27506F891E415C721A3E596E2652738F36719FC63D7DB3E0346A9AC62452
          769A1D44637F1C4160781E44647B1E466985193A5C7A0D253C530109111A0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000002030A0E140B1A222B0C21
          2D32081D28280310181705151D231D3E53663D759FC24B8DC0EF3B729FCB2145
          63820E2333420614202204131F1E0519272B06182630040F1823000304090000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000101000303050004
          0604000204000000000000050A0E1C374B5E477AA3C5599AD1FB4882B4E6264A
          698D0A17212D0000010000000000000306030003070800010205000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000001060B111E374A614B7CA4C662A1D7FD528EC0F42D52
          70970B17212D0000000100000000000001030000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000002050919303F4E437193AF5993BFE44A7FA6CF2748
          607A08141B230000000000000000000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0101000002010000000000000102111F2A322F51677A3C68839F32576D851A30
          3E4A050C12150000000000000000000000020000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0202000001010000000000000000060B0F11111F282F1629323D122028310911
          161A020307070000000000000000000000010000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000001010100010202000101010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000002020301030405000203040000
          0101000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100010204000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
end
