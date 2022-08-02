object dm: Tdm
  OldCreateOrder = False
  Height = 294
  Width = 404
  object RESTClient1: TRESTClient
    Params = <>
    Left = 64
    Top = 48
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    Left = 168
    Top = 48
  end
  object RESTResponse1: TRESTResponse
    Left = 272
    Top = 48
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = MemTable
    FieldDefs = <>
    Response = RESTResponse1
    Left = 80
    Top = 168
  end
  object MemTable: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 240
    Top = 168
  end
end
