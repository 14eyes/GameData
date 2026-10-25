require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11016 = class("Quest11016", QuestActorProxy)
Quest11016.defaultAlias = "Quest11016"
local clientData
local mainID
local actorAlias
local subIDs

function Quest11016:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest11016:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1101601"] = self.OnSubStart1101601}
end

function Quest11016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1101601"] = self.OnSubFinish1101601}
end

function Quest11016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest11016:Start()
    print("Start")
end

function Quest11016:OnDestroy()
    print("OnDestroy")
end

function Quest11016:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11016:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11016:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11016:OnSubStart1101601(arg1)
    print("OnSubStart1101601")
end

function Quest11016:OnSubFinish1101601(arg1)
    print("OnSubFinish1101601")
    actorMgr:DestroyNpcActorByAlias("Npc1235511015")
    actorMgr:DestroyNpcActorByAlias("Npc1235611015")
    actorMgr:DestroyNpcActorByAlias("Npc1235711015")
    actorMgr:DestroyNpcActorByAlias("Npc1021111015")
    actorMgr:DestroyNpcActorByAlias("Npc104511015")
    actorMgr:DestroyNpcActorByAlias("Npc104611015")
    globalActor:LeaveWeather()
end

return Quest11016
