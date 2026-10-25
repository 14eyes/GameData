require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20512 = class("Quest20512", QuestActorProxy)
Quest20512.defaultAlias = "Quest20512"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest20512:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest20512:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2051201"] = self.OnSubStart2051201,
        ["2051202"] = self.OnSubStart2051202,
        ["2051203"] = self.OnSubStart2051203
    }
end

function Quest20512:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2051201"] = self.OnSubFinish2051201,
        ["2051202"] = self.OnSubFinish2051202,
        ["2051203"] = self.OnSubFinish2051203
    }
end

function Quest20512:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2051201"] = self.OnSubFailed2051201,
        ["2051202"] = self.OnSubFailed2051202,
        ["2051203"] = self.OnSubFailed2051203
    }
end

function Quest20512:Start()
    print("Start")
end

function Quest20512:OnDestroy()
    print("OnDestroy")
end

function Quest20512:OnMainFinished(arg1)
    print("OnMainFinished")
    self:CallDelay(0.5, self.BlackScreen)
end

function Quest20512:OnMainFailed(arg1)
    print("OnMainFailed")
    self:CallDelay(0.5, self.ClearData)
end

function Quest20512:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearData()
end

function Quest20512:BlackScreen()
    print("BlackScreen")
    globalActor:EnablePlayerInput(false)
    self:ShowBlackScreen(0.5, 1, 0.5, self.ClearData)
    globalActor:EnablePlayerInput(true)
end

function Quest20512:ClearData()
    print("ClearData")
    self:DestroyQuestNpcActor(npcs.Npc1408Data.alias, 3)
end

function Quest20512:OnSubStart2051201(arg1)
    print("OnSubStart2051201")
    self:CreateQuestNpc(arg1, npcs.Npc1408Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1408Data.alias):DoFreeStyle(1190)
end

function Quest20512:OnSubFinish2051201(arg1)
    print("OnSubFinish2051201")
end

function Quest20512:OnSubFailed2051201(arg1)
    print("OnSubFailed2051201")
end

function Quest20512:OnSubStart2051202(arg1)
    print("OnSubStart2051202")
end

function Quest20512:OnSubFinish2051202(arg1)
    print("OnSubFinish2051202")
end

function Quest20512:OnSubFailed2051202(arg1)
    print("OnSubFailed2051202")
end

function Quest20512:OnSubStart2051203(arg1)
    print("OnSubStart2051203")
end

function Quest20512:OnSubFinish2051203(arg1)
    print("OnSubFinish2051203")
end

function Quest20512:OnSubFailed2051203(arg1)
    print("OnSubFailed2051203")
end

return Quest20512
