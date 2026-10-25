require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76077 = class("Quest76077", QuestActorProxy)
Quest76077.defaultAlias = "Quest76077"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76077:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76077:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7607701"] = self.OnSubStart7607701, ["7607702"] = self.OnSubStart7607702}
end

function Quest76077:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7607701"] = self.OnSubFinish7607701, ["7607702"] = self.OnSubFinish7607702}
end

function Quest76077:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76077:Start()
    print("Start")
end

function Quest76077:OnDestroy()
    print("OnDestroy")
end

function Quest76077:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76077:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76077:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76077:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76077:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76077:OnSubStart7607701(arg1)
    print("OnSubStart7607701")
    this:NpcCreateWithNpcTrigger(npcs.Npc1316.id, 0, 8, 7607701)
end

function Quest76077:OnSubFinish7607701(arg1)
    print("OnSubFinish7607701")
    this:SafeDestroyQuestNpc(npcs.Npc1316.alias, 3)
end

function Quest76077:OnSubStart7607702(arg1)
    print("OnSubStart7607702")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTrigger(npcs.Npc1316.id, 0, 50, 7607702)
        this:GetQuestNpcActor(npcs.Npc1316.alias, 76077):DoFreeStyle(1230, true, nil, true, true, false, false)
    end)
end

function Quest76077:OnSubFinish7607702(arg1)
    print("OnSubFinish7607702")
    this:SafeDestroyQuestNpc(npcs.Npc1316.alias, 1205)
end

return Quest76077
