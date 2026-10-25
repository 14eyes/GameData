require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72152 = class("Quest72152", QuestActorProxy)
Quest72152.defaultAlias = "Quest72152"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72152:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72152:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7215201"] = self.OnSubStart7215201,
        ["7215202"] = self.OnSubStart7215202,
        ["7215203"] = self.OnSubStart7215203
    }
end

function Quest72152:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7215201"] = self.OnSubFinish7215201,
        ["7215202"] = self.OnSubFinish7215202,
        ["7215203"] = self.OnSubFinish7215203
    }
end

function Quest72152:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7215201"] = self.OnSubFailed7215201,
        ["7215202"] = self.OnSubFailed7215202,
        ["7215203"] = self.OnSubFailed7215203
    }
end

function Quest72152:Start()
    print("Start")
end

function Quest72152:OnDestroy()
    print("OnDestroy")
end

function Quest72152:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72152:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72152:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72152:OnSubStart7215201(arg1)
    print("OnSubStart7215201")
end

function Quest72152:OnSubFinish7215201(arg1)
    print("OnSubFinish7215201")
end

function Quest72152:OnSubFailed7215201(arg1)
    print("OnSubFailed7215201")
end

function Quest72152:OnSubStart7215202(arg1)
    print("OnSubStart7215202")
end

function Quest72152:OnSubFinish7215202(arg1)
    print("OnSubFinish7215202")
end

function Quest72152:OnSubFailed7215202(arg1)
    print("OnSubFailed7215202")
end

function Quest72152:OnSubStart7215203(arg1)
    print("OnSubStart7215203")
end

function Quest72152:OnSubFinish7215203(arg1)
    print("OnSubFinish7215203")
end

function Quest72152:OnSubFailed7215203(arg1)
    print("OnSubFailed7215203")
end

return Quest72152
