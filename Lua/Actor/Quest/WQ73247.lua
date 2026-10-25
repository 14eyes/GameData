require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73247 = class("Quest73247", QuestActorProxy)
Quest73247.defaultAlias = "Quest73247"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73247:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73247:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7324701"] = self.OnSubStart7324701,
        ["7324702"] = self.OnSubStart7324702,
        ["7324703"] = self.OnSubStart7324703,
        ["7324704"] = self.OnSubStart7324704
    }
end

function Quest73247:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7324701"] = self.OnSubFinish7324701,
        ["7324702"] = self.OnSubFinish7324702,
        ["7324703"] = self.OnSubFinish7324703,
        ["7324704"] = self.OnSubFinish7324704
    }
end

function Quest73247:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73247:Start()
    print("Start")
end

function Quest73247:OnDestroy()
    print("OnDestroy")
end

function Quest73247:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73247:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73247:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73247:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73247:OnSubStart7324701(arg1)
    print("OnSubStart7324701")
    self:NpcCreate(arg1, npcs.Npc421902Data.id, 1)
end

function Quest73247:OnSubFinish7324701(arg1)
    print("OnSubFinish7324701")
end

function Quest73247:OnSubStart7324702(arg1)
    print("OnSubStart7324702")
    self:CallDelay(3, function(arg1)
        arg1:EnablePlayerInput(true)
        actorUtils.FinishQuestID(false, 7324702)
    end)

    self:EnablePlayerInput(false)
    self:CountDownUIStart(10, 0, 3)
end

function Quest73247:OnSubFinish7324702(arg1)
    print("OnSubFinish7324702")
end

function Quest73247:OnSubStart7324703(arg1)
    print("OnSubStart7324703")
end

function Quest73247:OnSubFinish7324703(arg1)
    print("OnSubFinish7324703")
    self:ShowBlackScreen(0.5, 2, 0.5, function(arg1)
        arg1:RequestInteraction(npcs.Npc421902Data.alias)
    end, nil, nil, "", false, true)
end

function Quest73247:OnSubStart7324704(arg1)
    print("OnSubStart7324704")
end

function Quest73247:OnSubFinish7324704(arg1)
    print("OnSubFinish7324704")
end

return Quest73247
