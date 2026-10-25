require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71070 = class("Quest71070", QuestActorProxy)
Quest71070.defaultAlias = "Quest71070"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71070:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71070:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7107001"] = self.OnSubStart7107001,
        ["7107002"] = self.OnSubStart7107002,
        ["7107003"] = self.OnSubStart7107003,
        ["7107004"] = self.OnSubStart7107004,
        ["7107005"] = self.OnSubStart7107005,
        ["7107006"] = self.OnSubStart7107006,
        ["7107007"] = self.OnSubStart7107007,
        ["7107008"] = self.OnSubStart7107008,
        ["7107009"] = self.OnSubStart7107009,
        ["7107010"] = self.OnSubStart7107010,
        ["7107011"] = self.OnSubStart7107011,
        ["7107013"] = self.OnSubStart7107013,
        ["7107014"] = self.OnSubStart7107014,
        ["7107015"] = self.OnSubStart7107015,
        ["7107016"] = self.OnSubStart7107016,
        ["7107017"] = self.OnSubStart7107017
    }
end

function Quest71070:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7107001"] = self.OnSubFinish7107001,
        ["7107002"] = self.OnSubFinish7107002,
        ["7107003"] = self.OnSubFinish7107003,
        ["7107004"] = self.OnSubFinish7107004,
        ["7107005"] = self.OnSubFinish7107005,
        ["7107006"] = self.OnSubFinish7107006,
        ["7107007"] = self.OnSubFinish7107007,
        ["7107008"] = self.OnSubFinish7107008,
        ["7107009"] = self.OnSubFinish7107009,
        ["7107010"] = self.OnSubFinish7107010,
        ["7107011"] = self.OnSubFinish7107011,
        ["7107013"] = self.OnSubFinish7107013,
        ["7107014"] = self.OnSubFinish7107014,
        ["7107015"] = self.OnSubFinish7107015,
        ["7107016"] = self.OnSubFinish7107016,
        ["7107017"] = self.OnSubFinish7107017
    }
end

function Quest71070:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71070:Start()
    print("Start")
end

function Quest71070:OnDestroy()
    print("OnDestroy")
end

function Quest71070:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71070:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71070:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71070:OnSubStart7107001(arg1)
    print("OnSubStart7107001")
end

function Quest71070:OnSubFinish7107001(arg1)
    print("OnSubFinish7107001")
end

function Quest71070:OnSubStart7107002(arg1)
    print("OnSubStart7107002")
end

function Quest71070:OnSubFinish7107002(arg1)
    print("OnSubFinish7107002")
end

function Quest71070:OnSubStart7107003(arg1)
    print("OnSubStart7107003")
end

function Quest71070:OnSubFinish7107003(arg1)
    print("OnSubFinish7107003")
end

function Quest71070:OnSubStart7107004(arg1)
    print("OnSubStart7107004")
end

function Quest71070:OnSubFinish7107004(arg1)
    print("OnSubFinish7107004")
end

function Quest71070:OnSubStart7107005(arg1)
    print("OnSubStart7107005")
end

function Quest71070:OnSubFinish7107005(arg1)
    print("OnSubFinish7107005")
end

function Quest71070:OnSubStart7107006(arg1)
    print("OnSubStart7107006")
end

function Quest71070:OnSubFinish7107006(arg1)
    print("OnSubFinish7107006")
end

function Quest71070:OnSubStart7107007(arg1)
    print("OnSubStart7107007")
end

function Quest71070:OnSubFinish7107007(arg1)
    print("OnSubFinish7107007")
end

function Quest71070:OnSubStart7107008(arg1)
    print("OnSubStart7107008")
end

function Quest71070:OnSubFinish7107008(arg1)
    print("OnSubFinish7107008")
end

function Quest71070:OnSubStart7107009(arg1)
    print("OnSubStart7107009")
end

function Quest71070:OnSubFinish7107009(arg1)
    print("OnSubFinish7107009")
end

function Quest71070:OnSubStart7107010(arg1)
    print("OnSubStart7107010")
end

function Quest71070:OnSubFinish7107010(arg1)
    print("OnSubFinish7107010")
end

function Quest71070:OnSubStart7107011(arg1)
    print("OnSubStart7107011")
end

function Quest71070:OnSubFinish7107011(arg1)
    print("OnSubFinish7107011")
end

function Quest71070:OnSubStart7107013(arg1)
    print("OnSubStart7107013")
end

function Quest71070:OnSubFinish7107013(arg1)
    print("OnSubFinish7107013")
end

function Quest71070:OnSubStart7107014(arg1)
    print("OnSubStart7107014")
end

function Quest71070:OnSubFinish7107014(arg1)
    print("OnSubFinish7107014")
end

function Quest71070:OnSubStart7107015(arg1)
    print("OnSubStart7107015")
end

function Quest71070:OnSubFinish7107015(arg1)
    print("OnSubFinish7107015")
end

function Quest71070:OnSubStart7107016(arg1)
    print("OnSubStart7107016")
end

function Quest71070:OnSubFinish7107016(arg1)
    print("OnSubFinish7107016")
end

function Quest71070:OnSubStart7107017(arg1)
    print("OnSubStart7107017")
end

function Quest71070:OnSubFinish7107017(arg1)
    print("OnSubFinish7107017")
end

return Quest71070
