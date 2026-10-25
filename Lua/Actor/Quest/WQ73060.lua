require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73060 = class("Quest73060", QuestActorProxy)
Quest73060.defaultAlias = "Quest73060"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73060:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73060:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7306001"] = self.OnSubStart7306001,
        ["7306002"] = self.OnSubStart7306002,
        ["7306003"] = self.OnSubStart7306003,
        ["7306004"] = self.OnSubStart7306004
    }
end

function Quest73060:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7306001"] = self.OnSubFinish7306001,
        ["7306002"] = self.OnSubFinish7306002,
        ["7306003"] = self.OnSubFinish7306003,
        ["7306004"] = self.OnSubFinish7306004
    }
end

function Quest73060:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73060:Start()
    print("Start")
end

function Quest73060:OnDestroy()
    print("OnDestroy")
end

function Quest73060:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73060:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73060:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73060:OnSubStart7306001(arg1)
    print("OnSubStart7306001")
    self:CreateQuestNpc(arg1, npcs.Npc20605Data.id, 1)
end

function Quest73060:OnSubFinish7306001(arg1)
    print("OnSubFinish7306001")
end

function Quest73060:OnSubStart7306002(arg1)
    print("OnSubStart7306002")
    self:CreateQuestNpc(arg1, npcs.Npc20607Data.id, 1)
end

function Quest73060:OnSubFinish7306002(arg1)
    print("OnSubFinish7306002")
end

function Quest73060:OnSubStart7306003(arg1)
    print("OnSubStart7306003")
    self:CreateQuestNpc(arg1, npcs.Npc20606Data.id, 1)
end

function Quest73060:OnSubFinish7306003(arg1)
    print("OnSubFinish7306003")
end

function Quest73060:OnSubStart7306004(arg1)
    print("OnSubStart7306004")
    self:CreateQuestNpc(arg1, npcs.Npc20608Data.id, 1)
end

function Quest73060:OnSubFinish7306004(arg1)
    print("OnSubFinish7306004")
end

return Quest73060
