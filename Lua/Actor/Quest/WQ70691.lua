require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70691 = class("Quest70691", QuestActorProxy)
Quest70691.defaultAlias = "Quest70691"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70691:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70691:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7069101"] = self.OnSubStart7069101}
end

function Quest70691:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7069101"] = self.OnSubFinish7069101}
end

function Quest70691:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70691:Start()
    print("Start")
end

function Quest70691:OnDestroy()
    print("OnDestroy")
end

function Quest70691:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70691:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70691:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30893.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1040.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10090.alias, 3)
end

function Quest70691:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70691:OnSubStart7069101(arg1)
    print("OnSubStart7069101")
    this:CreateQuestNpc(arg1, npcs.Npc30893.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30893.alias, 70691):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30893.alias, 70691):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1040.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1040.alias, 70691):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1040.alias, 70691):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc10090.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc10090.alias, 70691):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc10090.alias, 70691):DisableInteeHeadCtrl(true)
end

function Quest70691:OnSubFinish7069101(arg1)
    print("OnSubFinish7069101")
    this:SafeDestroyQuestNpc(npcs.Npc30893.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1040.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10090.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2473, nil)
    end)
end

return Quest70691
