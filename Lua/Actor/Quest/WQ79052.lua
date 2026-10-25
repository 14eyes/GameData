require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79052 = class("Quest79052", QuestActorProxy)
Quest79052.defaultAlias = "Quest79052"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest79052:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest79052:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7905201"] = self.OnSubStart7905201}
end

function Quest79052:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7905201"] = self.OnSubFinish7905201}
end

function Quest79052:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79052:Start()
    print("Start")
end

function Quest79052:OnDestroy()
    print("OnDestroy")
end

function Quest79052:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79052:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79052:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79052:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest79052:OnSubStart7905201(arg1)
    print("OnSubStart7905201")
    this:CreateQuestNpc(arg1, npcs.Npc13250Data.id, 0)
end

function Quest79052:OnSubFinish7905201(arg1)
    print("OnSubFinish7905201")
    this:NpcDestroyWithBlackscreen(10, npcs.Npc13250Data.alias)
end

return Quest79052
