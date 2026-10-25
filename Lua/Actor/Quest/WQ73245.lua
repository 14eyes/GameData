require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73245 = class("Quest73245", QuestActorProxy)
Quest73245.defaultAlias = "Quest73245"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73245:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73245:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7324501"] = self.OnSubStart7324501,
        ["7324502"] = self.OnSubStart7324502,
        ["7324503"] = self.OnSubStart7324503,
        ["7324504"] = self.OnSubStart7324504
    }
end

function Quest73245:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7324501"] = self.OnSubFinish7324501,
        ["7324502"] = self.OnSubFinish7324502,
        ["7324503"] = self.OnSubFinish7324503,
        ["7324504"] = self.OnSubFinish7324504
    }
end

function Quest73245:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73245:Start()
    print("Start")
end

function Quest73245:OnDestroy()
    print("OnDestroy")
end

function Quest73245:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73245:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73245:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73245:OnSubStart7324501(arg1)
    print("OnSubStart7324501")
    self:CreateQuestNpc(arg1, npcs.Npc421901Data.id, 1)
end

function Quest73245:OnSubFinish7324501(arg1)
    print("OnSubFinish7324501")
end

function Quest73245:OnSubStart7324502(arg1)
    print("OnSubStart7324502")
    self:CallDelay(3, function(arg1)
        arg1:EnablePlayerInput(true)
        actorUtils.FinishQuestID(false, 7324502)
    end)

    self:EnablePlayerInput(false)
    self:CountDownUIStart(10, 0, 3)
end

function Quest73245:OnSubFinish7324502(arg1)
    print("OnSubFinish7324502")
end

function Quest73245:OnSubStart7324503(arg1)
    print("OnSubStart7324503")
end

function Quest73245:OnSubFinish7324503(arg1)
    print("OnSubFinish7324503")
    self:ShowBlackScreen(0.5, 2, 0.5, function(arg1)
        arg1:RequestInteraction(npcs.Npc421901Data.alias)
    end, nil, nil, "", false, true)
end

function Quest73245:OnSubStart7324504(arg1)
    print("OnSubStart7324504")
end

function Quest73245:OnSubFinish7324504(arg1)
    print("OnSubFinish7324504")
end

return Quest73245
