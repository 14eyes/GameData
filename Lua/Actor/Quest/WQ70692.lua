require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70692 = class("Quest70692", QuestActorProxy)
Quest70692.defaultAlias = "Quest70692"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70692:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70692:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7069201"] = self.OnSubStart7069201}
end

function Quest70692:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7069201"] = self.OnSubFinish7069201}
end

function Quest70692:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70692:Start()
    print("Start")
end

function Quest70692:OnDestroy()
    print("OnDestroy")
end

function Quest70692:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70692:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70692:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30894.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1060.alias, 3)
end

function Quest70692:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70692:OnSubStart7069201(arg1)
    print("OnSubStart7069201")
    this:CreateQuestNpc(arg1, npcs.Npc30894.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30894.alias, 70692):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30894.alias, 70692):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1060.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1060.alias, 70692):DoFreeStyle(1180, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1060.alias, 70692):DisableInteeHeadCtrl(true)
end

function Quest70692:OnSubFinish7069201(arg1)
    print("OnSubFinish7069201")
    this:SafeDestroyQuestNpc(npcs.Npc30894.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1060.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2428, nil)
    end)
end

return Quest70692
