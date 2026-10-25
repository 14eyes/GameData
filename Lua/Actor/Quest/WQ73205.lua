require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73205 = class("Quest73205", QuestActorProxy)
Quest73205.defaultAlias = "Quest73205"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73205:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73205:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7320507"] = self.OnSubStart7320507,
        ["7320508"] = self.OnSubStart7320508,
        ["7320501"] = self.OnSubStart7320501,
        ["7320502"] = self.OnSubStart7320502,
        ["7320503"] = self.OnSubStart7320503,
        ["7320504"] = self.OnSubStart7320504,
        ["7320505"] = self.OnSubStart7320505,
        ["7320506"] = self.OnSubStart7320506,
        ["7320509"] = self.OnSubStart7320509
    }
end

function Quest73205:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7320507"] = self.OnSubFinish7320507,
        ["7320508"] = self.OnSubFinish7320508,
        ["7320501"] = self.OnSubFinish7320501,
        ["7320502"] = self.OnSubFinish7320502,
        ["7320503"] = self.OnSubFinish7320503,
        ["7320504"] = self.OnSubFinish7320504,
        ["7320505"] = self.OnSubFinish7320505,
        ["7320506"] = self.OnSubFinish7320506,
        ["7320509"] = self.OnSubFinish7320509
    }
end

function Quest73205:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73205:Start()
    print("Start")
end

function Quest73205:OnDestroy()
    print("OnDestroy")
end

function Quest73205:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73205:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73205:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73205:OnSubStart7320507(arg1)
    print("OnSubStart7320507")
    self:CreateQuestNpc(arg1, npcs.Npc4233Data.id, 1)
end

function Quest73205:OnSubFinish7320507(arg1)
    print("OnSubFinish7320507")
    self:ShowBlackScreen(0.3, 0.5, 0.5, nil, nil, nil, "", false, true)
end

function Quest73205:OnSubStart7320508(arg1)
    print("OnSubStart7320508")
    self:CreateQuestNpc(arg1, npcs.Npc4233Data.id, 1)
end

function Quest73205:OnSubFinish7320508(arg1)
    print("OnSubFinish7320508")
end

function Quest73205:OnSubStart7320501(arg1)
    print("OnSubStart7320501")
    self:CreateQuestNpc(arg1, npcs.Npc4233Data.id, 1)
end

function Quest73205:OnSubFinish7320501(arg1)
    print("OnSubFinish7320501")
    self:SetNavigationByMainId(73205, true)
    self:ShowBlackScreen(0.3, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73205:OnSubStart7320502(arg1)
    print("OnSubStart7320502")
end

function Quest73205:OnSubFinish7320502(arg1)
    print("OnSubFinish7320502")
end

function Quest73205:OnSubStart7320503(arg1)
    print("OnSubStart7320503")
    self:CreateQuestNpc(arg1, npcs.Npc4233Data.id, 1)
    self:RequestInteraction(npcs.Npc4233Data.alias)
end

function Quest73205:OnSubFinish7320503(arg1)
    print("OnSubFinish7320503")
end

function Quest73205:OnSubStart7320504(arg1)
    print("OnSubStart7320504")
    self:CreateQuestNpc(arg1, npcs.Npc4233Data.id, 1)
end

function Quest73205:OnSubFinish7320504(arg1)
    print("OnSubFinish7320504")
end

function Quest73205:OnSubStart7320505(arg1)
    print("OnSubStart7320505")
    self:CreateQuestNpc(arg1, npcs.Npc4233Data.id, 1)
end

function Quest73205:OnSubFinish7320505(arg1)
    print("OnSubFinish7320505")
end

function Quest73205:OnSubStart7320506(arg1)
    print("OnSubStart7320506")
end

function Quest73205:OnSubFinish7320506(arg1)
    print("OnSubFinish7320506")
end

function Quest73205:OnSubStart7320509(arg1)
    print("OnSubStart7320509")
end

function Quest73205:OnSubFinish7320509(arg1)
    print("OnSubFinish7320509")
end

return Quest73205
