require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73270 = class("Quest73270", QuestActorProxy)
Quest73270.defaultAlias = "Quest73270"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73270:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73270:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7327001"] = self.OnSubStart7327001,
        ["7327002"] = self.OnSubStart7327002,
        ["7327003"] = self.OnSubStart7327003,
        ["7327004"] = self.OnSubStart7327004,
        ["7327005"] = self.OnSubStart7327005,
        ["7327006"] = self.OnSubStart7327006,
        ["7327007"] = self.OnSubStart7327007,
        ["7327008"] = self.OnSubStart7327008,
        ["7327009"] = self.OnSubStart7327009,
        ["7327010"] = self.OnSubStart7327010,
        ["7327012"] = self.OnSubStart7327012,
        ["7327011"] = self.OnSubStart7327011
    }
end

function Quest73270:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7327001"] = self.OnSubFinish7327001,
        ["7327002"] = self.OnSubFinish7327002,
        ["7327003"] = self.OnSubFinish7327003,
        ["7327004"] = self.OnSubFinish7327004,
        ["7327005"] = self.OnSubFinish7327005,
        ["7327006"] = self.OnSubFinish7327006,
        ["7327007"] = self.OnSubFinish7327007,
        ["7327008"] = self.OnSubFinish7327008,
        ["7327009"] = self.OnSubFinish7327009,
        ["7327010"] = self.OnSubFinish7327010,
        ["7327012"] = self.OnSubFinish7327012,
        ["7327011"] = self.OnSubFinish7327011
    }
end

function Quest73270:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73270:Start()
    print("Start")
end

function Quest73270:OnDestroy()
    print("OnDestroy")
end

function Quest73270:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73270:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73270:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73270:OnSubStart7327001(arg1)
    print("OnSubStart7327001")
end

function Quest73270:OnSubFinish7327001(arg1)
    print("OnSubFinish7327001")
end

function Quest73270:OnSubStart7327002(arg1)
    print("OnSubStart7327002")
end

function Quest73270:OnSubFinish7327002(arg1)
    print("OnSubFinish7327002")
end

function Quest73270:OnSubStart7327003(arg1)
    print("OnSubStart7327003")
end

function Quest73270:OnSubFinish7327003(arg1)
    print("OnSubFinish7327003")
end

function Quest73270:OnSubStart7327004(arg1)
    print("OnSubStart7327004")
end

function Quest73270:OnSubFinish7327004(arg1)
    print("OnSubFinish7327004")
end

function Quest73270:OnSubStart7327005(arg1)
    print("OnSubStart7327005")
end

function Quest73270:OnSubFinish7327005(arg1)
    print("OnSubFinish7327005")
end

function Quest73270:OnSubStart7327006(arg1)
    print("OnSubStart7327006")
end

function Quest73270:OnSubFinish7327006(arg1)
    print("OnSubFinish7327006")
end

function Quest73270:OnSubStart7327007(arg1)
    print("OnSubStart7327007")
end

function Quest73270:OnSubFinish7327007(arg1)
    print("OnSubFinish7327007")
end

function Quest73270:OnSubStart7327008(arg1)
    print("OnSubStart7327008")
end

function Quest73270:OnSubFinish7327008(arg1)
    print("OnSubFinish7327008")
end

function Quest73270:OnSubStart7327009(arg1)
    print("OnSubStart7327009")
end

function Quest73270:OnSubFinish7327009(arg1)
    print("OnSubFinish7327009")
end

function Quest73270:OnSubStart7327010(arg1)
    print("OnSubStart7327010")
end

function Quest73270:OnSubFinish7327010(arg1)
    print("OnSubFinish7327010")
end

function Quest73270:OnSubStart7327012(arg1)
    print("OnSubStart7327012")
end

function Quest73270:OnSubFinish7327012(arg1)
    print("OnSubFinish7327012")
end

function Quest73270:OnSubStart7327011(arg1)
    print("OnSubStart7327011")
end

function Quest73270:OnSubFinish7327011(arg1)
    print("OnSubFinish7327011")
end

return Quest73270
