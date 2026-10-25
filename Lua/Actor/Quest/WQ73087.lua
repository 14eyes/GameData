require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73087 = class("Quest73087", QuestActorProxy)
Quest73087.defaultAlias = "Quest73087"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73087:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73087:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7308701"] = self.OnSubStart7308701,
        ["7308702"] = self.OnSubStart7308702,
        ["7308703"] = self.OnSubStart7308703,
        ["7308704"] = self.OnSubStart7308704,
        ["7308705"] = self.OnSubStart7308705,
        ["7308706"] = self.OnSubStart7308706,
        ["7308707"] = self.OnSubStart7308707,
        ["7308708"] = self.OnSubStart7308708,
        ["7308709"] = self.OnSubStart7308709,
        ["7308710"] = self.OnSubStart7308710,
        ["7308711"] = self.OnSubStart7308711,
        ["7308712"] = self.OnSubStart7308712
    }
end

function Quest73087:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7308701"] = self.OnSubFinish7308701,
        ["7308702"] = self.OnSubFinish7308702,
        ["7308703"] = self.OnSubFinish7308703,
        ["7308704"] = self.OnSubFinish7308704,
        ["7308705"] = self.OnSubFinish7308705,
        ["7308706"] = self.OnSubFinish7308706,
        ["7308707"] = self.OnSubFinish7308707,
        ["7308708"] = self.OnSubFinish7308708,
        ["7308709"] = self.OnSubFinish7308709,
        ["7308710"] = self.OnSubFinish7308710,
        ["7308711"] = self.OnSubFinish7308711,
        ["7308712"] = self.OnSubFinish7308712
    }
end

function Quest73087:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73087:Start()
    print("Start")
end

function Quest73087:OnDestroy()
    print("OnDestroy")
end

function Quest73087:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73087:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73087:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73087:OnSubStart7308701(arg1)
    print("OnSubStart7308701")
    self:CreateQuestNpc(arg1, npcs.Npc4222Data.id, 1)
end

function Quest73087:OnSubFinish7308701(arg1)
    print("OnSubFinish7308701")
end

function Quest73087:OnSubStart7308702(arg1)
    print("OnSubStart7308702")
    self:CallDelay(5, function(arg1)
        arg1:EnablePlayerInput(true)
    end)

    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(3, function(arg1)
        actorUtils.FinishQuestID(false, 7308702)
    end)
end

function Quest73087:OnSubFinish7308702(arg1)
    print("OnSubFinish7308702")
end

function Quest73087:OnSubStart7308703(arg1)
    print("OnSubStart7308703")
end

function Quest73087:OnSubFinish7308703(arg1)
    print("OnSubFinish7308703")
end

function Quest73087:OnSubStart7308704(arg1)
    print("OnSubStart7308704")
end

function Quest73087:OnSubFinish7308704(arg1)
    print("OnSubFinish7308704")
end

function Quest73087:OnSubStart7308705(arg1)
    print("OnSubStart7308705")
    self:CreateQuestNpc(arg1, npcs.Npc422201Data.id, 1)
end

function Quest73087:OnSubFinish7308705(arg1)
    print("OnSubFinish7308705")
end

function Quest73087:OnSubStart7308706(arg1)
    print("OnSubStart7308706")
    self:CallDelay(4, function(arg1)
        arg1:EnablePlayerInput(true)
    end)

    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(4, function(arg1)
        actorUtils.FinishQuestID(false, 7308706)
    end)
end

function Quest73087:OnSubFinish7308706(arg1)
    print("OnSubFinish7308706")
end

function Quest73087:OnSubStart7308707(arg1)
    print("OnSubStart7308707")
end

function Quest73087:OnSubFinish7308707(arg1)
    print("OnSubFinish7308707")
end

function Quest73087:OnSubStart7308708(arg1)
    print("OnSubStart7308708")
end

function Quest73087:OnSubFinish7308708(arg1)
    print("OnSubFinish7308708")
end

function Quest73087:OnSubStart7308709(arg1)
    print("OnSubStart7308709")
    self:CreateQuestNpc(arg1, npcs.Npc422202Data.id, 1)
end

function Quest73087:OnSubFinish7308709(arg1)
    print("OnSubFinish7308709")
end

function Quest73087:OnSubStart7308710(arg1)
    print("OnSubStart7308710")
    self:CallDelay(4, function(arg1)
        arg1:EnablePlayerInput(true)
    end)

    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(4, function(arg1)
        actorUtils.FinishQuestID(false, 7308710)
    end)
end

function Quest73087:OnSubFinish7308710(arg1)
    print("OnSubFinish7308710")
end

function Quest73087:OnSubStart7308711(arg1)
    print("OnSubStart7308711")
end

function Quest73087:OnSubFinish7308711(arg1)
    print("OnSubFinish7308711")
end

function Quest73087:OnSubStart7308712(arg1)
    print("OnSubStart7308712")
end

function Quest73087:OnSubFinish7308712(arg1)
    print("OnSubFinish7308712")
end

return Quest73087
