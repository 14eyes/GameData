require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79059 = class("Quest79059", QuestActorProxy)
Quest79059.defaultAlias = "Quest79059"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest79059:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest79059:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7905901"] = self.OnSubStart7905901,
        ["7905902"] = self.OnSubStart7905902,
        ["7905903"] = self.OnSubStart7905903
    }
end

function Quest79059:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7905901"] = self.OnSubFinish7905901,
        ["7905902"] = self.OnSubFinish7905902,
        ["7905903"] = self.OnSubFinish7905903
    }
end

function Quest79059:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79059:Start()
    print("Start")
end

function Quest79059:OnDestroy()
    print("OnDestroy")
end

function Quest79059:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79059:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79059:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79059:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest79059:OnSubStart7905901(arg1)
    print("OnSubStart7905901")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21110Data.id, 1)
end

function Quest79059:OnSubFinish7905901(arg1)
    print("OnSubFinish7905901")
end

function Quest79059:OnSubStart7905902(arg1)
    print("OnSubStart7905902")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21111Data.id, 1)
end

function Quest79059:OnSubFinish7905902(arg1)
    print("OnSubFinish7905902")
    this:SafeDestroyQuestNpc(npcs.Npc21110Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc21111Data.alias, 10)
end

return Quest79059
