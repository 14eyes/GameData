require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75671 = class("Quest75671", QuestActorProxy)
Quest75671.defaultAlias = "Quest75671"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75671:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75671:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7567101"] = self.OnSubStart7567101}
end

function Quest75671:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7567101"] = self.OnSubFinish7567101}
end

function Quest75671:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75671:Start()
    print("Start")
end

function Quest75671:OnDestroy()
    print("OnDestroy")
end

function Quest75671:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75671:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75671:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30919.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30923.alias, 3)
end

function Quest75671:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75671:OnSubStart7567101(arg1)
    print("OnSubStart7567101")
    this:CreateQuestNpc(arg1, npcs.Npc30919.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30919.alias, 75671):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30919.alias, 75671):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc30923.id, 0, false, 0)
end

function Quest75671:OnSubFinish7567101(arg1)
    print("OnSubFinish7567101")
    this:SafeDestroyQuestNpc(npcs.Npc30919.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30923.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2443, nil)
    end)
end

return Quest75671
