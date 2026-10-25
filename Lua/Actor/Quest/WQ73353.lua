require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73353 = class("Quest73353", QuestActorProxy)
Quest73353.defaultAlias = "Quest73353"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest73353:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest73353:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7335301"] = self.OnSubStart7335301}
end

function Quest73353:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7335301"] = self.OnSubFinish7335301}
end

function Quest73353:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73353:Start()
    print("Start")
end

function Quest73353:OnDestroy()
    print("OnDestroy")
end

function Quest73353:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73353:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73353:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30651.alias, 3)
end

function Quest73353:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest73353:OnSubStart7335301(arg1)
    print("OnSubStart7335301")
    this:CreateQuestNpc(arg1, npcs.Npc30651.id, 0, false, 0)
end

function Quest73353:OnSubFinish7335301(arg1)
    print("OnSubFinish7335301")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30651.alias)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(1904, nil)
    end)
end

return Quest73353
