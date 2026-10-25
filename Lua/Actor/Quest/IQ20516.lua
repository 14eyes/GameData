require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20516 = class("Quest20516", QuestActorProxy)
Quest20516.defaultAlias = "Quest20516"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest20516:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest20516:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2051601"] = self.OnSubStart2051601,
        ["2051602"] = self.OnSubStart2051602,
        ["2051603"] = self.OnSubStart2051603,
        ["2051604"] = self.OnSubStart2051604,
        ["2051605"] = self.OnSubStart2051605,
        ["2051606"] = self.OnSubStart2051606
    }
end

function Quest20516:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2051601"] = self.OnSubFinish2051601,
        ["2051602"] = self.OnSubFinish2051602,
        ["2051603"] = self.OnSubFinish2051603,
        ["2051604"] = self.OnSubFinish2051604,
        ["2051605"] = self.OnSubFinish2051605,
        ["2051606"] = self.OnSubFinish2051606
    }
end

function Quest20516:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2051601"] = self.OnSubFailed2051601,
        ["2051602"] = self.OnSubFailed2051602,
        ["2051603"] = self.OnSubFailed2051603,
        ["2051604"] = self.OnSubFailed2051604,
        ["2051605"] = self.OnSubFailed2051605,
        ["2051606"] = self.OnSubFailed2051606
    }
end

function Quest20516:Start()
    print("Start")
end

function Quest20516:OnDestroy()
    print("OnDestroy")
end

function Quest20516:OnMainFinished(arg1)
    print("OnMainFinished")
    self:CallDelay(0.5, self.BlackScreen)
end

function Quest20516:OnMainFailed(arg1)
    print("OnMainFailed")
    self:CallDelay(0.5, self.ClearData)
end

function Quest20516:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearData()
end

function Quest20516:BlackScreen()
    print("BlackScreen")
    globalActor:EnablePlayerInput(false)
    self:ShowBlackScreen(0.5, 1, 0.5, self.ClearData)
    globalActor:EnablePlayerInput(true)
end

function Quest20516:ClearData()
    print("ClearData")
    self:DestroyQuestNpcActor(npcs.Npc1408Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1405Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1429Data.alias, 3)
end

function Quest20516:OnSubStart2051601(arg1)
    print("OnSubStart2051601")
    self:CreateQuestNpc(arg1, npcs.Npc1408Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1405Data.id, 2)
end

function Quest20516:OnSubFinish2051601(arg1)
    print("OnSubFinish2051601")
end

function Quest20516:OnSubFailed2051601(arg1)
    print("OnSubFailed2051601")
end

function Quest20516:OnSubStart2051602(arg1)
    print("OnSubStart2051602")
    self:CreateQuestNpc(arg1, npcs.Npc1429Data.id, 3)
end

function Quest20516:OnSubFinish2051602(arg1)
    print("OnSubFinish2051602")
end

function Quest20516:OnSubFailed2051602(arg1)
    print("OnSubFailed2051602")
end

function Quest20516:OnSubStart2051603(arg1)
    print("OnSubStart2051603")
end

function Quest20516:OnSubFinish2051603(arg1)
    print("OnSubFinish2051603")
end

function Quest20516:OnSubFailed2051603(arg1)
    print("OnSubFailed2051603")
end

function Quest20516:OnSubStart2051604(arg1)
    print("OnSubStart2051604")
end

function Quest20516:OnSubFinish2051604(arg1)
    print("OnSubFinish2051604")
end

function Quest20516:OnSubFailed2051604(arg1)
    print("OnSubFailed2051604")
end

function Quest20516:OnSubStart2051605(arg1)
    print("OnSubStart2051605")
end

function Quest20516:OnSubFinish2051605(arg1)
    print("OnSubFinish2051605")
end

function Quest20516:OnSubFailed2051605(arg1)
    print("OnSubFailed2051605")
end

function Quest20516:OnSubStart2051606(arg1)
    print("OnSubStart2051606")
end

function Quest20516:OnSubFinish2051606(arg1)
    print("OnSubFinish2051606")
end

function Quest20516:OnSubFailed2051606(arg1)
    print("OnSubFailed2051606")
end

return Quest20516
