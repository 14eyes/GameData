require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73091 = class("Quest73091", QuestActorProxy)
Quest73091.defaultAlias = "Quest73091"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest73091:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest73091:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7309101"] = self.OnSubStart7309101,
        ["7309103"] = self.OnSubStart7309103,
        ["7309102"] = self.OnSubStart7309102
    }
end

function Quest73091:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7309101"] = self.OnSubFinish7309101,
        ["7309103"] = self.OnSubFinish7309103,
        ["7309102"] = self.OnSubFinish7309102
    }
end

function Quest73091:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73091:Start()
    print("Start")
end

function Quest73091:OnDestroy()
    print("OnDestroy")
end

function Quest73091:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73091:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73091:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73091:OnSubStart7309101(arg1)
    print("OnSubStart7309101")
end

function Quest73091:OnSubFinish7309101(arg1)
    print("OnSubFinish7309101")
end

function Quest73091:OnSubStart7309103(arg1)
    print("OnSubStart7309103")
end

function Quest73091:OnSubFinish7309103(arg1)
    print("OnSubFinish7309103")
    self:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest73091:OnSubStart7309102(arg1)
    print("OnSubStart7309102")
end

function Quest73091:OnSubFinish7309102(arg1)
    print("OnSubFinish7309102")
end

return Quest73091
