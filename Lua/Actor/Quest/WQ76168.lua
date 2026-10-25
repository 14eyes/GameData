require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76168 = class("Quest76168", QuestActorProxy)
Quest76168.defaultAlias = "Quest76168"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76168:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76168:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7616801"] = self.OnSubStart7616801,
        ["7616802"] = self.OnSubStart7616802,
        ["7616803"] = self.OnSubStart7616803
    }
end

function Quest76168:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7616801"] = self.OnSubFinish7616801,
        ["7616802"] = self.OnSubFinish7616802,
        ["7616803"] = self.OnSubFinish7616803
    }
end

function Quest76168:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76168:Start()
    print("Start")
end

function Quest76168:OnDestroy()
    print("OnDestroy")
end

function Quest76168:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76168:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76168:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76168:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76168:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76168:OnSubStart7616801(arg1)
    print("OnSubStart7616801")
    this:CreateQuestNpc(arg1, npcs.Npc7618.id, 0, false, 0)
end

function Quest76168:OnSubFinish7616801(arg1)
    print("OnSubFinish7616801")
end

function Quest76168:OnSubStart7616802(arg1)
    print("OnSubStart7616802")
end

function Quest76168:OnSubFinish7616802(arg1)
    print("OnSubFinish7616802")
end

function Quest76168:OnSubStart7616803(arg1)
    print("OnSubStart7616803")
end

function Quest76168:OnSubFinish7616803(arg1)
    print("OnSubFinish7616803")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc7618.alias)
end

return Quest76168
