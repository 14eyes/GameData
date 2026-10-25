require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75237 = class("Quest75237", QuestActorProxy)
Quest75237.defaultAlias = "Quest75237"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75237:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75237:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7523701"] = self.OnSubStart7523701, ["7523702"] = self.OnSubStart7523702}
end

function Quest75237:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7523701"] = self.OnSubFinish7523701, ["7523702"] = self.OnSubFinish7523702}
end

function Quest75237:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75237:Start()
    print("Start")
end

function Quest75237:OnDestroy()
    print("OnDestroy")
end

function Quest75237:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75237:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75237:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75237:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75237:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest75237:OnSubStart7523701(arg1)
    print("OnSubStart7523701")
    this:CreateQuestNpc(arg1, npcs.Npc22087.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22087.alias, 75237):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest75237:OnSubFinish7523701(arg1)
    print("OnSubFinish7523701")
end

function Quest75237:OnSubStart7523702(arg1)
    print("OnSubStart7523702")
end

function Quest75237:OnSubFinish7523702(arg1)
    print("OnSubFinish7523702")
    this:NpcDestroyImmediately(3, npcs.Npc22087.alias)
end

return Quest75237
