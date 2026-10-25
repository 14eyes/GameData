require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74517 = class("Quest74517", QuestActorProxy)
Quest74517.defaultAlias = "Quest74517"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74517:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74517:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7451701"] = self.OnSubStart7451701}
end

function Quest74517:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7451701"] = self.OnSubFinish7451701}
end

function Quest74517:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74517:Start()
    print("Start")
end

function Quest74517:OnDestroy()
    print("OnDestroy")
end

function Quest74517:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74517:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74517:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30834.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30835.alias, 3)
end

function Quest74517:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74517:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest74517:OnSubStart7451701(arg1)
    print("OnSubStart7451701")
    this:CreateQuestNpc(arg1, npcs.Npc30834.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30834.alias, 74517):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc30835.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30835.alias, 74517):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30835.alias, 74517):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30834.alias, 74517):DisableInteeHeadCtrl(true)
end

function Quest74517:OnSubFinish7451701(arg1)
    print("OnSubFinish7451701")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30834.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30835.alias)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2165, nil)
    end)
end

return Quest74517
