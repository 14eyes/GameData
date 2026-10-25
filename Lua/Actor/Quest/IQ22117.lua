require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22117 = class("Quest22117", QuestActorProxy)
Quest22117.defaultAlias = "Quest22117"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest22117:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest22117:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2211701"] = self.OnSubStart2211701,
        ["2211702"] = self.OnSubStart2211702,
        ["2211703"] = self.OnSubStart2211703
    }
end

function Quest22117:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2211701"] = self.OnSubFinish2211701,
        ["2211702"] = self.OnSubFinish2211702,
        ["2211703"] = self.OnSubFinish2211703
    }
end

function Quest22117:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2211701"] = self.OnSubFailed2211701,
        ["2211702"] = self.OnSubFailed2211702,
        ["2211703"] = self.OnSubFailed2211703
    }
end

function Quest22117:Start()
    print("Start")
end

function Quest22117:OnDestroy()
    print("OnDestroy")
end

function Quest22117:OnMainFinished(arg1)
    print("OnMainFinished")
    self:DestroyQuestNpcActor(npcs.Npc2093Data.alias, 0)
end

function Quest22117:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22117:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActor(npcs.Npc2093Data.alias, 0)
end

function Quest22117:DestroyNPC()
    print("DestroyNPC")
    self:DestroyQuestNpcActor(npcs.Npc2093Data.alias, 0)
end

function Quest22117:OnSubStart2211701(arg1)
    print("OnSubStart2211701")
    self:CreateQuestNpc(arg1, npcs.Npc2093Data.id, 1)
end

function Quest22117:OnSubFinish2211701(arg1)
    print("OnSubFinish2211701")
end

function Quest22117:OnSubFailed2211701(arg1)
    print("OnSubFailed2211701")
end

function Quest22117:OnSubStart2211702(arg1)
    print("OnSubStart2211702")
end

function Quest22117:OnSubFinish2211702(arg1)
    print("OnSubFinish2211702")
    self:NarratorOnlyTask(datas.NarratorTable)
end

function Quest22117:OnSubFailed2211702(arg1)
    print("OnSubFailed2211702")
end

function Quest22117:OnSubStart2211703(arg1)
    print("OnSubStart2211703")
end

function Quest22117:OnSubFinish2211703(arg1)
    print("OnSubFinish2211703")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.DestroyNPC)
end

function Quest22117:OnSubFailed2211703(arg1)
    print("OnSubFailed2211703")
end

return Quest22117
