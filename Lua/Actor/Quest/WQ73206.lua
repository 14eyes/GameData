require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73206 = class("Quest73206", QuestActorProxy)
Quest73206.defaultAlias = "Quest73206"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73206:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73206:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7320608"] = self.OnSubStart7320608,
        ["7320609"] = self.OnSubStart7320609,
        ["7320601"] = self.OnSubStart7320601,
        ["7320602"] = self.OnSubStart7320602,
        ["7320603"] = self.OnSubStart7320603,
        ["7320607"] = self.OnSubStart7320607,
        ["7320604"] = self.OnSubStart7320604,
        ["7320605"] = self.OnSubStart7320605,
        ["7320606"] = self.OnSubStart7320606,
        ["7320610"] = self.OnSubStart7320610
    }
end

function Quest73206:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7320608"] = self.OnSubFinish7320608,
        ["7320609"] = self.OnSubFinish7320609,
        ["7320601"] = self.OnSubFinish7320601,
        ["7320602"] = self.OnSubFinish7320602,
        ["7320603"] = self.OnSubFinish7320603,
        ["7320607"] = self.OnSubFinish7320607,
        ["7320604"] = self.OnSubFinish7320604,
        ["7320605"] = self.OnSubFinish7320605,
        ["7320606"] = self.OnSubFinish7320606,
        ["7320610"] = self.OnSubFinish7320610
    }
end

function Quest73206:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73206:Start()
    print("Start")
end

function Quest73206:OnDestroy()
    print("OnDestroy")
end

function Quest73206:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73206:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73206:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73206:OnSubStart7320608(arg1)
    print("OnSubStart7320608")
    self:CreateQuestNpc(arg1, npcs.Npc4233Data.id, 1)
end

function Quest73206:OnSubFinish7320608(arg1)
    print("OnSubFinish7320608")
    self:ShowBlackScreen(0.3, 0.5, 0.5, nil, nil, nil, "", false, true)
end

function Quest73206:OnSubStart7320609(arg1)
    print("OnSubStart7320609")
    self:CreateQuestNpc(arg1, npcs.Npc4233Data.id, 1)
end

function Quest73206:OnSubFinish7320609(arg1)
    print("OnSubFinish7320609")
end

function Quest73206:OnSubStart7320601(arg1)
    print("OnSubStart7320601")
    self:CreateQuestNpc(arg1, npcs.Npc4233Data.id, 1)
end

function Quest73206:OnSubFinish7320601(arg1)
    print("OnSubFinish7320601")
    self:SetNavigationByMainId(73206, true)
    self:ShowBlackScreen(0.3, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73206:OnSubStart7320602(arg1)
    print("OnSubStart7320602")
end

function Quest73206:OnSubFinish7320602(arg1)
    print("OnSubFinish7320602")
end

function Quest73206:OnSubStart7320603(arg1)
    print("OnSubStart7320603")
    self:CreateQuestNpc(arg1, npcs.Npc4233Data.id, 1)
    self:RequestInteraction(npcs.Npc4233Data.alias)
end

function Quest73206:OnSubFinish7320603(arg1)
    print("OnSubFinish7320603")
end

function Quest73206:OnSubStart7320607(arg1)
    print("OnSubStart7320607")
end

function Quest73206:OnSubFinish7320607(arg1)
    print("OnSubFinish7320607")
end

function Quest73206:OnSubStart7320604(arg1)
    print("OnSubStart7320604")
end

function Quest73206:OnSubFinish7320604(arg1)
    print("OnSubFinish7320604")
    self:SafeDestroyQuestNpc(npcs.Npc4233Data.alias, 3)
end

function Quest73206:OnSubStart7320605(arg1)
    print("OnSubStart7320605")
end

function Quest73206:OnSubFinish7320605(arg1)
    print("OnSubFinish7320605")
end

function Quest73206:OnSubStart7320606(arg1)
    print("OnSubStart7320606")
end

function Quest73206:OnSubFinish7320606(arg1)
    print("OnSubFinish7320606")
end

function Quest73206:OnSubStart7320610(arg1)
    print("OnSubStart7320610")
end

function Quest73206:OnSubFinish7320610(arg1)
    print("OnSubFinish7320610")
end

return Quest73206
