require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74688 = class("Quest74688", QuestActorProxy)
Quest74688.defaultAlias = "Quest74688"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74688:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74688:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7468801"] = self.OnSubStart7468801}
end

function Quest74688:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7468801"] = self.OnSubFinish7468801}
end

function Quest74688:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74688:Start()
    print("Start")
end

function Quest74688:OnDestroy()
    print("OnDestroy")
end

function Quest74688:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74688:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74688:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30509.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30534.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30839.alias, 3)
end

function Quest74688:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74688:OnSubStart7468801(arg1)
    print("OnSubStart7468801")
    this:CreateQuestNpc(arg1, npcs.Npc30509.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30509.alias, 74688):DisableInteeHeadCtrl(false)
    this:CreateQuestNpc(arg1, npcs.Npc30534.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30534.alias, 74688):DisableInteeHeadCtrl(false)
    this:CreateQuestNpc(arg1, npcs.Npc30839.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30839.alias, 74688):DoFreeStyle(1171, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30839.alias, 74688):DisableInteeHeadCtrl(false)
end

function Quest74688:OnSubFinish7468801(arg1)
    print("OnSubFinish7468801")
    this:SafeDestroyQuestNpc(npcs.Npc30509.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30534.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30839.alias, 3)
end

return Quest74688
