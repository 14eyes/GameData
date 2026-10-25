require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20513 = class("Quest20513", QuestActorProxy)
Quest20513.defaultAlias = "Quest20513"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest20513:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest20513:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2051301"] = self.OnSubStart2051301,
        ["2051302"] = self.OnSubStart2051302,
        ["2051303"] = self.OnSubStart2051303
    }
end

function Quest20513:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2051301"] = self.OnSubFinish2051301,
        ["2051302"] = self.OnSubFinish2051302,
        ["2051303"] = self.OnSubFinish2051303
    }
end

function Quest20513:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2051301"] = self.OnSubFailed2051301,
        ["2051302"] = self.OnSubFailed2051302,
        ["2051303"] = self.OnSubFailed2051303
    }
end

function Quest20513:Start()
    print("Start")
end

function Quest20513:OnDestroy()
    print("OnDestroy")
end

function Quest20513:OnMainFinished(arg1)
    print("OnMainFinished")
    self:CallDelay(0.5, self.BlackScreen)
end

function Quest20513:OnMainFailed(arg1)
    print("OnMainFailed")
    self:CallDelay(0.5, self.ClearData)
end

function Quest20513:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearData()
end

function Quest20513:BlackScreen()
    print("BlackScreen")
    globalActor:EnablePlayerInput(false)
    self:ShowBlackScreen(0.5, 1, 0.5, self.ClearData)
    globalActor:EnablePlayerInput(true)
end

function Quest20513:ClearData()
    print("ClearData")
    self:DestroyQuestNpcActor(npcs.Npc1408Data.alias, 3)
end

function Quest20513:OnSubStart2051301(arg1)
    print("OnSubStart2051301")
    self:CreateQuestNpc(arg1, npcs.Npc1408Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1408Data.alias):DoFreeStyle(1190)
end

function Quest20513:OnSubFinish2051301(arg1)
    print("OnSubFinish2051301")
end

function Quest20513:OnSubFailed2051301(arg1)
    print("OnSubFailed2051301")
end

function Quest20513:OnSubStart2051302(arg1)
    print("OnSubStart2051302")
end

function Quest20513:OnSubFinish2051302(arg1)
    print("OnSubFinish2051302")
end

function Quest20513:OnSubFailed2051302(arg1)
    print("OnSubFailed2051302")
end

function Quest20513:OnSubStart2051303(arg1)
    print("OnSubStart2051303")
end

function Quest20513:OnSubFinish2051303(arg1)
    print("OnSubFinish2051303")
end

function Quest20513:OnSubFailed2051303(arg1)
    print("OnSubFailed2051303")
end

return Quest20513
