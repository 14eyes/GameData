require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22701 = class("Quest22701", QuestActorProxy)
Quest22701.defaultAlias = "Quest22701"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest22701:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest22701:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2270101"] = self.OnSubStart2270101,
        ["2270102"] = self.OnSubStart2270102,
        ["2270103"] = self.OnSubStart2270103,
        ["2270104"] = self.OnSubStart2270104,
        ["2270105"] = self.OnSubStart2270105,
        ["2270106"] = self.OnSubStart2270106
    }
end

function Quest22701:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2270101"] = self.OnSubFinish2270101,
        ["2270102"] = self.OnSubFinish2270102,
        ["2270103"] = self.OnSubFinish2270103,
        ["2270104"] = self.OnSubFinish2270104,
        ["2270105"] = self.OnSubFinish2270105,
        ["2270106"] = self.OnSubFinish2270106
    }
end

function Quest22701:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2270101"] = self.OnSubFailed2270101,
        ["2270102"] = self.OnSubFailed2270102,
        ["2270103"] = self.OnSubFailed2270103,
        ["2270104"] = self.OnSubFailed2270104,
        ["2270105"] = self.OnSubFailed2270105,
        ["2270106"] = self.OnSubFailed2270106
    }
end

function Quest22701:Start()
    print("Start")
end

function Quest22701:OnDestroy()
    print("OnDestroy")
end

function Quest22701:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.2, 1, 0.5, self.DestoryNPC)
end

function Quest22701:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22701:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActor(npcs.Npc2400Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2418Data.alias, 3)
end

function Quest22701:FinishQuest()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 2270102)
    end
end

function Quest22701:DestoryNPC()
    print("DestoryNPC")
    self:DestroyQuestNpcActor(npcs.Npc2400Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2418Data.alias, 3)
end

function Quest22701:OnSubStart2270101(arg1)
    print("OnSubStart2270101")
end

function Quest22701:OnSubFinish2270101(arg1)
    print("SubFinish2270101")
    self.ShowBlackScreen(self, 0.2, 1, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc2400Data.id, 1)
    end)
end

function Quest22701:OnSubFailed2270101(arg1)
    print("OnSubFailed2270101")
end

function Quest22701:OnSubStart2270102(arg1)
    print("Walk")
    self.CallDelay(self, 2, function()
        self:GetQuestNpcActor(npcs.Npc2400Data.alias)
        self:GetQuestNpcActor(npcs.Npc2400Data.alias):WalkToRouteTask(datas.shixiong_go, self.FinishQuest)
    end)
end

function Quest22701:OnSubFinish2270102(arg1)
    print("OnSubFinish2270102")
end

function Quest22701:OnSubFailed2270102(arg1)
    print("OnSubFailed2270102")
end

function Quest22701:OnSubStart2270103(arg1)
    print("OnSubStart2270103")
end

function Quest22701:OnSubFinish2270103(arg1)
    print("OnSubFinish2270103")
    self:GetQuestNpcActor(npcs.Npc2400Data.alias)
    self:GetQuestNpcActor(npcs.Npc2400Data.alias):WalkToRoute(datas.shixiong_Return)
end

function Quest22701:OnSubFailed2270103(arg1)
    print("OnSubFailed2270103")
end

function Quest22701:OnSubStart2270104(arg1)
    print("OnSubStart2270104")
end

function Quest22701:OnSubFinish2270104(arg1)
    print("OnSubFinish2270104")
end

function Quest22701:OnSubFailed2270104(arg1)
    print("OnSubFailed2270104")
end

function Quest22701:OnSubStart2270105(arg1)
    print("OnSubStart2270105")
    self:CreateQuestNpc(arg1, npcs.Npc2400Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc2418Data.id, 2)
end

function Quest22701:OnSubFinish2270105(arg1)
    print("OnSubFinish2270105")
end

function Quest22701:OnSubFailed2270105(arg1)
    print("OnSubFailed2270105")
end

function Quest22701:OnSubStart2270106(arg1)
    print("OnSubStart2270106")
    self:CreateQuestNpc(arg1, npcs.Npc2418Data.id, 2)
end

function Quest22701:OnSubFinish2270106(arg1)
    print("OnSubFinish2270106")
end

function Quest22701:OnSubFailed2270106(arg1)
    print("OnSubFailed2270106")
end

return Quest22701
