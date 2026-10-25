require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20515 = class("Quest20515", QuestActorProxy)
Quest20515.defaultAlias = "Quest20515"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest20515:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest20515:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2051501"] = self.OnSubStart2051501,
        ["2051502"] = self.OnSubStart2051502,
        ["2051503"] = self.OnSubStart2051503,
        ["2051504"] = self.OnSubStart2051504,
        ["2051505"] = self.OnSubStart2051505,
        ["2051506"] = self.OnSubStart2051506
    }
end

function Quest20515:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2051501"] = self.OnSubFinish2051501,
        ["2051502"] = self.OnSubFinish2051502,
        ["2051503"] = self.OnSubFinish2051503,
        ["2051504"] = self.OnSubFinish2051504,
        ["2051505"] = self.OnSubFinish2051505,
        ["2051506"] = self.OnSubFinish2051506
    }
end

function Quest20515:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2051501"] = self.OnSubFailed2051501,
        ["2051502"] = self.OnSubFailed2051502,
        ["2051503"] = self.OnSubFailed2051503,
        ["2051504"] = self.OnSubFailed2051504,
        ["2051505"] = self.OnSubFailed2051505,
        ["2051506"] = self.OnSubFailed2051506
    }
end

function Quest20515:Start()
    print("Start")
end

function Quest20515:OnDestroy()
    print("OnDestroy")
end

function Quest20515:OnMainFinished(arg1)
    print("OnMainFinished")
    self:CallDelay(0.5, self.BlackScreen)
end

function Quest20515:OnMainFailed(arg1)
    print("OnMainFailed")
    self:CallDelay(0.5, self.ClearData)
end

function Quest20515:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearData()
end

function Quest20515:BlackScreen()
    print("BlackScreen")
    globalActor:EnablePlayerInput(false)
    self:ShowBlackScreen(0.5, 1, 0.5, self.ClearData)
    globalActor:EnablePlayerInput(true)
end

function Quest20515:ClearData()
    print("ClearData")
    self:DestroyQuestNpcActor(npcs.Npc1408Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1405Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1602Data.alias, 3)
end

function Quest20515:OnSubStart2051501(arg1)
    print("OnSubStart2051501")
    self:CreateQuestNpc(arg1, npcs.Npc1408Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1405Data.id, 2)
end

function Quest20515:OnSubFinish2051501(arg1)
    print("OnSubFinish2051501")
end

function Quest20515:OnSubFailed2051501(arg1)
    print("OnSubFailed2051501")
end

function Quest20515:OnSubStart2051502(arg1)
    print("OnSubStart2051502")
    self:CreateQuestNpc(arg1, npcs.Npc1602Data.id, 3)
end

function Quest20515:OnSubFinish2051502(arg1)
    print("OnSubFinish2051502")
end

function Quest20515:OnSubFailed2051502(arg1)
    print("OnSubFailed2051502")
end

function Quest20515:OnSubStart2051503(arg1)
    print("OnSubStart2051503")
end

function Quest20515:OnSubFinish2051503(arg1)
    print("OnSubFinish2051503")
end

function Quest20515:OnSubFailed2051503(arg1)
    print("OnSubFailed2051503")
end

function Quest20515:OnSubStart2051504(arg1)
    print("OnSubStart2051504")
end

function Quest20515:OnSubFinish2051504(arg1)
    print("OnSubFinish2051504")
end

function Quest20515:OnSubFailed2051504(arg1)
    print("OnSubFailed2051504")
end

function Quest20515:OnSubStart2051505(arg1)
    print("OnSubStart2051505")
end

function Quest20515:OnSubFinish2051505(arg1)
    print("OnSubFinish2051505")
end

function Quest20515:OnSubFailed2051505(arg1)
    print("OnSubFailed2051505")
end

function Quest20515:OnSubStart2051506(arg1)
    print("OnSubStart2051506")
end

function Quest20515:OnSubFinish2051506(arg1)
    print("OnSubFinish2051506")
end

function Quest20515:OnSubFailed2051506(arg1)
    print("OnSubFailed2051506")
end

return Quest20515
