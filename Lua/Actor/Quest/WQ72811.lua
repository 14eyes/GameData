require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72811 = class("Quest72811", QuestActorProxy)
Quest72811.defaultAlias = "Quest72811"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72811:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72811:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7281101"] = self.OnSubStart7281101,
        ["7281102"] = self.OnSubStart7281102,
        ["7281103"] = self.OnSubStart7281103
    }
end

function Quest72811:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7281101"] = self.OnSubFinish7281101,
        ["7281102"] = self.OnSubFinish7281102,
        ["7281103"] = self.OnSubFinish7281103
    }
end

function Quest72811:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7281101"] = self.OnSubFailed7281101,
        ["7281102"] = self.OnSubFailed7281102,
        ["7281103"] = self.OnSubFailed7281103
    }
end

function Quest72811:Start()
    print("Start")
end

function Quest72811:OnDestroy()
    print("OnDestroy")
end

function Quest72811:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72811:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72811:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72811:OnSubStart7281101(arg1)
    print("OnSubStart7281101")
end

function Quest72811:OnSubFinish7281101(arg1)
    print("OnSubFinish7281101")
end

function Quest72811:OnSubFailed7281101(arg1)
    print("OnSubFailed7281101")
end

function Quest72811:OnSubStart7281102(arg1)
    print("OnSubStart7281102")
end

function Quest72811:OnSubFinish7281102(arg1)
    print("OnSubFinish7281102")
end

function Quest72811:OnSubFailed7281102(arg1)
    print("OnSubFailed7281102")
end

function Quest72811:OnSubStart7281103(arg1)
    print("OnSubStart7281103")
end

function Quest72811:OnSubFinish7281103(arg1)
    print("OnSubFinish7281103")
end

function Quest72811:OnSubFailed7281103(arg1)
    print("OnSubFailed7281103")
end

return Quest72811
