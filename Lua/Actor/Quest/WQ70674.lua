require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70674 = class("Quest70674", QuestActorProxy)
Quest70674.defaultAlias = "Quest70674"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest70674:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70674:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7067401"] = self.OnSubStart7067401}
end

function Quest70674:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7067401"] = self.OnSubFinish7067401}
end

function Quest70674:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70674:Start()
    print("Start")
end

function Quest70674:OnDestroy()
    print("OnDestroy")
end

function Quest70674:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70674:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70674:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30153Data.alias, 3)
end

function Quest70674:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest70674:OnSubStart7067401(arg1)
    print("OnSubStart7067401")
    this:CreateQuestNpc(arg1, npcs.Npc30153Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc30153Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest70674:OnSubFinish7067401(arg1)
    print("OnSubFinish7067401")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30153Data.alias)
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:ShowTutorialDialog(1401)
    end)
end

return Quest70674
