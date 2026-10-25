require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22009 = class("Quest22009", QuestActorProxy)
Quest22009.defaultAlias = "Quest22009"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest22009:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest22009:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2200901"] = self.OnSubStart2200901,
        ["2200902"] = self.OnSubStart2200902,
        ["2200903"] = self.OnSubStart2200903
    }
end

function Quest22009:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2200901"] = self.OnSubFinish2200901,
        ["2200902"] = self.OnSubFinish2200902,
        ["2200903"] = self.OnSubFinish2200903
    }
end

function Quest22009:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2200901"] = self.OnSubFailed2200901,
        ["2200902"] = self.OnSubFailed2200902,
        ["2200903"] = self.OnSubFailed2200903
    }
end

function Quest22009:Start()
    print("Start")
end

function Quest22009:OnDestroy()
    print("OnDestroy")
end

function Quest22009:OnMainFinished(arg1)
    print("OnMainFinished")
    self:CallDelay(0.5, self.ClearData)
end

function Quest22009:OnMainFailed(arg1)
    print("OnMainFailed")
    self:CallDelay(0.5, self.ClearData)
end

function Quest22009:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearData()
end

function Quest22009:BlackScreen()
    print("BlackScreen")
    globalActor:EnablePlayerInput(false)
    self:ShowBlackScreen(0.5, 1, 0.5, self.ClearData)
    globalActor:EnablePlayerInput(true)
end

function Quest22009:ClearData()
    print("ClearData")
    self:DestroyQuestNpcActor(npcs.Npc2211Data.alias, 3)
end

function Quest22009:OnSubStart2200901(arg1)
    print("OnSubStart2200901")
    self:CreateQuestNpc(arg1, npcs.Npc2211Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc2211Data.alias):DoFreeStyle(1190)
end

function Quest22009:OnSubFinish2200901(arg1)
    print("OnSubFinish2200901")
end

function Quest22009:OnSubFailed2200901(arg1)
    print("OnSubFailed2200901")
end

function Quest22009:OnSubStart2200902(arg1)
    print("OnSubStart2200902")
end

function Quest22009:OnSubFinish2200902(arg1)
    print("OnSubFinish2200902")
end

function Quest22009:OnSubFailed2200902(arg1)
    print("OnSubFailed2200902")
end

function Quest22009:OnSubStart2200903(arg1)
    print("OnSubStart2200903")
end

function Quest22009:OnSubFinish2200903(arg1)
    print("OnSubFinish2200903")
    globalActor:CallDelay(1, self.BlackScreen)
end

function Quest22009:OnSubFailed2200903(arg1)
    print("OnSubFailed2200903")
end

return Quest22009
