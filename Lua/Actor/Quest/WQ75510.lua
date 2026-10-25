require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75510 = class("Quest75510", QuestActorProxy)
Quest75510.defaultAlias = "Quest75510"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75510:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75510:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7551001"] = self.OnSubStart7551001}
end

function Quest75510:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7551001"] = self.OnSubFinish7551001}
end

function Quest75510:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75510:Start()
    print("Start")
end

function Quest75510:OnDestroy()
    print("OnDestroy")
end

function Quest75510:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75510:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75510:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30836.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30837.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30838.alias, 3)
end

function Quest75510:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75510:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7551001 then
        actorUtils.FinishQuestID(false, 7551001)
    end
end

function Quest75510:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75510:OnSubStart7551001(arg1)
    print("OnSubStart7551001")
    this:CreateQuestNpc(arg1, npcs.Npc30836.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30836.alias, 75510):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc30837.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30837.alias, 75510):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc30838.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30838.alias, 75510):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc30836.alias, 75510):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30837.alias, 75510):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30838.alias, 75510):DisableInteeHeadCtrl(true)
end

function Quest75510:OnSubFinish7551001(arg1)
    print("OnSubFinish7551001")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30836.alias)
    this:SafeDestroyQuestNpc(npcs.Npc30837.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30838.alias, 3)
end

return Quest75510
