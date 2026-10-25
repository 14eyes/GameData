require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20514 = class("Quest20514", QuestActorProxy)
Quest20514.defaultAlias = "Quest20514"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest20514:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest20514:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2051401"] = self.OnSubStart2051401,
        ["2051402"] = self.OnSubStart2051402,
        ["2051403"] = self.OnSubStart2051403,
        ["2051404"] = self.OnSubStart2051404,
        ["2051405"] = self.OnSubStart2051405,
        ["2051406"] = self.OnSubStart2051406
    }
end

function Quest20514:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2051401"] = self.OnSubFinish2051401,
        ["2051402"] = self.OnSubFinish2051402,
        ["2051403"] = self.OnSubFinish2051403,
        ["2051404"] = self.OnSubFinish2051404,
        ["2051405"] = self.OnSubFinish2051405,
        ["2051406"] = self.OnSubFinish2051406
    }
end

function Quest20514:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2051401"] = self.OnSubFailed2051401,
        ["2051402"] = self.OnSubFailed2051402,
        ["2051403"] = self.OnSubFailed2051403,
        ["2051404"] = self.OnSubFailed2051404,
        ["2051405"] = self.OnSubFailed2051405,
        ["2051406"] = self.OnSubFailed2051406
    }
end

function Quest20514:Start()
    print("Start")
end

function Quest20514:OnDestroy()
    print("OnDestroy")
end

function Quest20514:OnMainFinished(arg1)
    print("OnMainFinished")
    self:CallDelay(0.5, self.BlackScreen)
end

function Quest20514:OnMainFailed(arg1)
    print("OnMainFailed")
    self:CallDelay(0.5, self.ClearData)
end

function Quest20514:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearData()
end

function Quest20514:BlackScreen()
    print("BlackScreen")
    globalActor:EnablePlayerInput(false)
    self:ShowBlackScreen(0.5, 1, 0.5, self.ClearData)
    globalActor:EnablePlayerInput(true)
end

function Quest20514:ClearData()
    print("ClearData")
    self:DestroyQuestNpcActor(npcs.Npc1408Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1405Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1409Data.alias, 3)
end

function Quest20514:OnSubStart2051401(arg1)
    print("OnSubStart2051401")
    self:CreateQuestNpc(arg1, npcs.Npc1408Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1405Data.id, 2)
end

function Quest20514:OnSubFinish2051401(arg1)
    print("OnSubFinish2051401")
end

function Quest20514:OnSubFailed2051401(arg1)
    print("OnSubFailed2051401")
end

function Quest20514:OnSubStart2051402(arg1)
    print("OnSubStart2051402")
    self:CreateQuestNpc(arg1, npcs.Npc1409Data.id, 3)
end

function Quest20514:OnSubFinish2051402(arg1)
    print("OnSubFinish2051402")
end

function Quest20514:OnSubFailed2051402(arg1)
    print("OnSubFailed2051402")
end

function Quest20514:OnSubStart2051403(arg1)
    print("OnSubStart2051403")
end

function Quest20514:OnSubFinish2051403(arg1)
    print("OnSubFinish2051403")
end

function Quest20514:OnSubFailed2051403(arg1)
    print("OnSubFailed2051403")
end

function Quest20514:OnSubStart2051404(arg1)
    print("OnSubStart2051404")
end

function Quest20514:OnSubFinish2051404(arg1)
    print("OnSubFinish2051404")
end

function Quest20514:OnSubFailed2051404(arg1)
    print("OnSubFailed2051404")
end

function Quest20514:OnSubStart2051405(arg1)
    print("OnSubStart2051405")
end

function Quest20514:OnSubFinish2051405(arg1)
    print("OnSubFinish2051405")
end

function Quest20514:OnSubFailed2051405(arg1)
    print("OnSubFailed2051405")
end

function Quest20514:OnSubStart2051406(arg1)
    print("OnSubStart2051406")
end

function Quest20514:OnSubFinish2051406(arg1)
    print("OnSubFinish2051406")
end

function Quest20514:OnSubFailed2051406(arg1)
    print("OnSubFailed2051406")
end

return Quest20514
