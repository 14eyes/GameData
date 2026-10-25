require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73249 = class("Quest73249", QuestActorProxy)
Quest73249.defaultAlias = "Quest73249"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73249:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73249:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7324901"] = self.OnSubStart7324901,
        ["7324905"] = self.OnSubStart7324905,
        ["7324902"] = self.OnSubStart7324902,
        ["7324903"] = self.OnSubStart7324903,
        ["7324904"] = self.OnSubStart7324904,
        ["7324906"] = self.OnSubStart7324906
    }
end

function Quest73249:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7324901"] = self.OnSubFinish7324901,
        ["7324905"] = self.OnSubFinish7324905,
        ["7324902"] = self.OnSubFinish7324902,
        ["7324903"] = self.OnSubFinish7324903,
        ["7324904"] = self.OnSubFinish7324904,
        ["7324906"] = self.OnSubFinish7324906
    }
end

function Quest73249:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73249:Start()
    print("Start")
end

function Quest73249:OnDestroy()
    print("OnDestroy")
end

function Quest73249:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73249:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73249:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73249:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73249:OnSubStart7324901(arg1)
    print("OnSubStart7324901")
    self:NpcCreate(arg1, npcs.Npc422001Data.id, 1)
end

function Quest73249:OnSubFinish7324901(arg1)
    print("OnSubFinish7324901")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73249:OnSubStart7324905(arg1)
    print("OnSubStart7324905")
end

function Quest73249:OnSubFinish7324905(arg1)
    print("OnSubFinish7324905")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73249:OnSubStart7324902(arg1)
    print("OnSubStart7324902")
end

function Quest73249:OnSubFinish7324902(arg1)
    print("OnSubFinish7324902")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:RequestInteraction(npcs.Npc422001Data.alias)
    end, nil, nil, "", false, true)
end

function Quest73249:OnSubStart7324903(arg1)
    print("OnSubStart7324903")
end

function Quest73249:OnSubFinish7324903(arg1)
    print("OnSubFinish7324903")
end

function Quest73249:OnSubStart7324904(arg1)
    print("OnSubStart7324904")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:RequestInteraction(npcs.Npc422001Data.alias)
    end, nil, nil, "", false, true)
end

function Quest73249:OnSubFinish7324904(arg1)
    print("OnSubFinish7324904")
end

function Quest73249:OnSubStart7324906(arg1)
    print("OnSubStart7324906")
end

function Quest73249:OnSubFinish7324906(arg1)
    print("OnSubFinish7324906")
end

return Quest73249
