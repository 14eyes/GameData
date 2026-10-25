require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75670 = class("Quest75670", QuestActorProxy)
Quest75670.defaultAlias = "Quest75670"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75670:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75670:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7567001"] = self.OnSubStart7567001}
end

function Quest75670:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7567001"] = self.OnSubFinish7567001}
end

function Quest75670:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75670:Start()
    print("Start")
end

function Quest75670:OnDestroy()
    print("OnDestroy")
end

function Quest75670:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75670:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75670:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyQuestNpcActor(npcs.Npc30879.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc30880.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc30883.alias, 3)
end

function Quest75670:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75670:OnSubStart7567001(arg1)
    print("OnSubStart7567001")
    this:CreateQuestNpc(arg1, npcs.Npc30879.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30880.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30883.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30879.alias, 75670):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30880.alias, 75670):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30879.alias, 75670):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30880.alias, 75670):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest75670:OnSubFinish7567001(arg1)
    print("OnSubFinish7567001")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc30879.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc30880.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc30883.alias, 3)
        this:ShowTutorialDialog(2404, nil)
    end)
end

return Quest75670
