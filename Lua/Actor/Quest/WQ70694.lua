require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70694 = class("Quest70694", QuestActorProxy)
Quest70694.defaultAlias = "Quest70694"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70694:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70694:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7069401"] = self.OnSubStart7069401}
end

function Quest70694:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7069401"] = self.OnSubFinish7069401}
end

function Quest70694:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70694:Start()
    print("Start")
end

function Quest70694:OnDestroy()
    print("OnDestroy")
end

function Quest70694:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70694:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70694:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30896.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1035.alias, 3)
end

function Quest70694:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70694:OnSubStart7069401(arg1)
    print("OnSubStart7069401")
    this:CreateQuestNpc(arg1, npcs.Npc30896.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30896.alias, 70694):DoFreeStyle(1090, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30896.alias, 70694):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1035.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1035.alias, 70694):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1035.alias, 70694):DisableInteeHeadCtrl(true)
end

function Quest70694:OnSubFinish7069401(arg1)
    print("OnSubFinish7069401")
    this:SafeDestroyQuestNpc(npcs.Npc30896.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1035.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2410, nil)
    end)
end

return Quest70694
