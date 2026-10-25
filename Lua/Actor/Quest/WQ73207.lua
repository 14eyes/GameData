require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73207 = class("Quest73207", QuestActorProxy)
Quest73207.defaultAlias = "Quest73207"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73207:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73207:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7320709"] = self.OnSubStart7320709,
        ["7320706"] = self.OnSubStart7320706,
        ["7320708"] = self.OnSubStart7320708,
        ["7320707"] = self.OnSubStart7320707,
        ["7320701"] = self.OnSubStart7320701,
        ["7320702"] = self.OnSubStart7320702,
        ["7320703"] = self.OnSubStart7320703,
        ["7320710"] = self.OnSubStart7320710,
        ["7320705"] = self.OnSubStart7320705,
        ["7320704"] = self.OnSubStart7320704
    }
end

function Quest73207:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7320709"] = self.OnSubFinish7320709,
        ["7320706"] = self.OnSubFinish7320706,
        ["7320708"] = self.OnSubFinish7320708,
        ["7320707"] = self.OnSubFinish7320707,
        ["7320701"] = self.OnSubFinish7320701,
        ["7320702"] = self.OnSubFinish7320702,
        ["7320703"] = self.OnSubFinish7320703,
        ["7320710"] = self.OnSubFinish7320710,
        ["7320705"] = self.OnSubFinish7320705,
        ["7320704"] = self.OnSubFinish7320704
    }
end

function Quest73207:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73207:Start()
    print("Start")
end

function Quest73207:OnDestroy()
    print("OnDestroy")
end

function Quest73207:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73207:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73207:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73207:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest7320710")
        actorUtils.FinishQuestID(false, 7320710)
    end
end

function Quest73207:OnSubStart7320709(arg1)
    print("OnSubStart7320709")
    self:CreateQuestNpc(arg1, npcs.Npc4232Data.id, 1)
end

function Quest73207:OnSubFinish7320709(arg1)
    print("OnSubFinish7320709")
end

function Quest73207:OnSubStart7320706(arg1)
    print("OnSubStart7320706")
    self:CreateQuestNpc(arg1, npcs.Npc4232Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4233Data.id, 2)
end

function Quest73207:OnSubFinish7320706(arg1)
    print("OnSubFinish7320706")
end

function Quest73207:OnSubStart7320708(arg1)
    print("OnSubStart7320708")
    self:CreateQuestNpc(arg1, npcs.Npc4232Data.id, 1)
end

function Quest73207:OnSubFinish7320708(arg1)
    print("OnSubFinish7320708")
    self:ShowBlackScreen(0.3, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73207:OnSubStart7320707(arg1)
    print("OnSubStart7320707")
    self:CreateQuestNpc(arg1, npcs.Npc4233Data.id, 1)
end

function Quest73207:OnSubFinish7320707(arg1)
    print("OnSubFinish7320707")
end

function Quest73207:OnSubStart7320701(arg1)
    print("OnSubStart7320701")
    self:CreateQuestNpc(arg1, npcs.Npc4232Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4233Data.id, 2)
end

function Quest73207:OnSubFinish7320701(arg1)
    print("OnSubFinish7320701")
    self:SetNavigationByMainId(73207, true)
    self:ShowBlackScreen(0.3, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73207:OnSubStart7320702(arg1)
    print("OnSubStart7320702")
    self:CreateQuestNpc(arg1, npcs.Npc4232Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4233Data.id, 2)
end

function Quest73207:OnSubFinish7320702(arg1)
    print("OnSubFinish7320702")
end

function Quest73207:OnSubStart7320703(arg1)
    print("OnSubStart7320703")
    self:CreateQuestNpc(arg1, npcs.Npc4232Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4233Data.id, 2)
    self:RequestInteraction(npcs.Npc4233Data.alias)
end

function Quest73207:OnSubFinish7320703(arg1)
    print("OnSubFinish7320703")
    self:ShowBlackScreen(0.3, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73207:OnSubStart7320710(arg1)
    print("OnSubStart7320710")
end

function Quest73207:OnSubFinish7320710(arg1)
    print("OnSubFinish7320710")
end

function Quest73207:OnSubStart7320705(arg1)
    print("OnSubStart7320705")
end

function Quest73207:OnSubFinish7320705(arg1)
    print("OnSubFinish7320705")
end

function Quest73207:OnSubStart7320704(arg1)
    print("OnSubStart7320704")
end

function Quest73207:OnSubFinish7320704(arg1)
    print("OnSubFinish7320704")
end

return Quest73207
