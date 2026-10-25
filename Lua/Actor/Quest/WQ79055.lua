require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79055 = class("Quest79055", QuestActorProxy)
Quest79055.defaultAlias = "Quest79055"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest79055:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest79055:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7905501"] = self.OnSubStart7905501,
        ["7905502"] = self.OnSubStart7905502,
        ["7905503"] = self.OnSubStart7905503
    }
end

function Quest79055:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7905501"] = self.OnSubFinish7905501,
        ["7905502"] = self.OnSubFinish7905502,
        ["7905503"] = self.OnSubFinish7905503
    }
end

function Quest79055:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79055:Start()
    print("Start")
end

function Quest79055:OnDestroy()
    print("OnDestroy")
end

function Quest79055:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79055:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79055:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79055:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest79055:OnSubStart7905501(arg1)
    print("OnSubStart7905501")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21064Data.id, 0)
end

function Quest79055:OnSubFinish7905501(arg1)
    print("OnSubFinish7905501")
end

function Quest79055:OnSubStart7905502(arg1)
    print("OnSubStart7905502")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21065Data.id, 0)
end

function Quest79055:OnSubFinish7905502(arg1)
    print("OnSubFinish7905502")
    this:SafeDestroyQuestNpc(npcs.Npc21064Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc21065Data.alias, 10)
end

return Quest79055
