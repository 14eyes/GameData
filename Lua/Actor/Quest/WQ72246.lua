require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72246 = class("Quest72246", QuestActorProxy)
Quest72246.defaultAlias = "Quest72246"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72246:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72246:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7224601"] = self.OnSubStart7224601,
        ["7224602"] = self.OnSubStart7224602,
        ["7224604"] = self.OnSubStart7224604,
        ["7224603"] = self.OnSubStart7224603
    }
end

function Quest72246:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7224601"] = self.OnSubFinish7224601,
        ["7224602"] = self.OnSubFinish7224602,
        ["7224604"] = self.OnSubFinish7224604,
        ["7224603"] = self.OnSubFinish7224603
    }
end

function Quest72246:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7224601"] = self.OnSubFailed7224601,
        ["7224602"] = self.OnSubFailed7224602,
        ["7224604"] = self.OnSubFailed7224604,
        ["7224603"] = self.OnSubFailed7224603
    }
end

function Quest72246:Start()
    print("Start")
end

function Quest72246:OnDestroy()
    print("OnDestroy")
end

function Quest72246:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72246:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72246:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72246:OnSubStart7224601(arg1)
    print("OnSubStart7224601")
end

function Quest72246:OnSubFinish7224601(arg1)
    print("OnSubFinish7224601")
end

function Quest72246:OnSubFailed7224601(arg1)
    print("OnSubFailed7224601")
end

function Quest72246:OnSubStart7224602(arg1)
    print("OnSubStart7224602")
    self:CreateQuestNpc(arg1, npcs.Npc20321Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 2)
end

function Quest72246:OnSubFinish7224602(arg1)
    print("OnSubFinish7224602")
end

function Quest72246:OnSubFailed7224602(arg1)
    print("OnSubFailed7224602")
end

function Quest72246:OnSubStart7224604(arg1)
    print("OnSubStart7224604")
    self:CreateQuestNpc(arg1, npcs.Npc20321Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 2)
end

function Quest72246:OnSubFinish7224604(arg1)
    print("OnSubFinish7224604")
end

function Quest72246:OnSubFailed7224604(arg1)
    print("OnSubFailed7224604")
end

function Quest72246:OnSubStart7224603(arg1)
    print("OnSubStart7224603")
    self:CreateQuestNpc(arg1, npcs.Npc20321Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 2)
end

function Quest72246:OnSubFinish7224603(arg1)
    print("OnSubFinish7224603")
end

function Quest72246:OnSubFailed7224603(arg1)
    print("OnSubFailed7224603")
end

return Quest72246
