require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12043 = class("Quest12043", QuestActorProxy)
Quest12043.defaultAlias = "Quest12043"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest12043:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest12043:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1204301"] = self.OnSubStart1204301}
end

function Quest12043:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1204301"] = self.OnSubFinish1204301}
end

function Quest12043:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest12043:Start()
    print("Start")
end

function Quest12043:OnDestroy()
    print("OnDestroy")
end

function Quest12043:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12043:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12043:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3054Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3054Data.alias, 0, true)
end

function Quest12043:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest12043:OnSubStart1204301(arg1)
    print("OnSubStart1204301")
    self:ActionSafeCall(function(arg1_2)
        local subQuestState = arg1_2:GetSubQuestState(1203307)
        local v = arg1_2:GetSubQuestState(1203411)
        if subQuestState == 1 or subQuestState == 2 or v == 1 or v == 2 then
        else
            arg1_2:CreateQuestNpc(arg1, npcs.Npc3054Data.id, 1)
        end
    end)

    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
end

function Quest12043:OnSubFinish1204301(arg1)
    print("OnSubFinish1204301")
    self:NpcDestroy(npcs.Npc3054Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3054Data.alias, 0, true)
end

return Quest12043
