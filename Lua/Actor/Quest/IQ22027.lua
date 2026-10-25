require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22027 = class("Quest22027", QuestActorProxy)
Quest22027.defaultAlias = "Quest22027"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest22027:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest22027:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2202701"] = self.OnSubStart2202701,
        ["2202702"] = self.OnSubStart2202702,
        ["2202703"] = self.OnSubStart2202703,
        ["2202705"] = self.OnSubStart2202705,
        ["2202704"] = self.OnSubStart2202704
    }
end

function Quest22027:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2202701"] = self.OnSubFinish2202701,
        ["2202702"] = self.OnSubFinish2202702,
        ["2202703"] = self.OnSubFinish2202703,
        ["2202705"] = self.OnSubFinish2202705,
        ["2202704"] = self.OnSubFinish2202704
    }
end

function Quest22027:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2202701"] = self.OnSubFailed2202701,
        ["2202702"] = self.OnSubFailed2202702,
        ["2202703"] = self.OnSubFailed2202703,
        ["2202705"] = self.OnSubFailed2202705,
        ["2202704"] = self.OnSubFailed2202704
    }
end

function Quest22027:Start()
    print("Start")
end

function Quest22027:OnDestroy()
    print("OnDestroy")
end

function Quest22027:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22027:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22027:OnMainCanceled(arg1)
    self:SafeDestroyQuestNpc(npcs.Npc3045Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc3001Data.alias, 3)
    local actor = actorMgr:GetActor(datas.Q22027Trigger_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest22027:createxiangtai2()
    print("createxiangtai2")
    self:CreateQuestNpcById(2202704, npcs.Npc3045Data.id, 1)
    self:RequestInteraction(npcs.Npc3045Data.alias)
end

function Quest22027:destroyxiangtai()
    print("destroyxiangtai")
    self:DestroyQuestNpcActorByAlias(npcs.Npc3045Data.alias, false)
end

function Quest22027:OnSubStart2202701(arg1)
    print("OnSubStart2202701")
    self:CreateQuestNpc(arg1, npcs.Npc3045Data.id, 1)
end

function Quest22027:OnSubFinish2202701(arg1)
    self.ActionSafeCall(self, function()
        self:ShowBlackScreen(0.5, 0.5, 0.5, function()
            self:DestroyQuestNpcActor(npcs.Npc3045Data.alias, 3)
            self:NotifyTo("Npc3045", 1, true)
        end, nil, nil, "")
    end)
end

function Quest22027:OnSubFailed2202701(arg1)
    print("OnSubFailed2202701")
end

function Quest22027:OnSubStart2202702(arg1)
    print("OnSubStart2202702")
    self:CreateQuestNpc(arg1, npcs.Npc3001Data.id, 2)
    self:NotifyTo("Npc3045", 1, true)
end

function Quest22027:OnSubFinish2202702(arg1)
    print("OnSubFinish2202702")
    self.ActionSafeCall(self, function()
        self:DestroyQuestNpcActor(npcs.Npc3045Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc3001Data.alias, 3)
        self:NotifyTo("Npc3045", 1, true)
    end)
end

function Quest22027:OnSubFailed2202702(arg1)
    print("OnSubFailed2202702")
end

function Quest22027:OnSubStart2202703(arg1)
    print("OnSubStart2202703")
    actorMgr:CreateActorWithPos(datas.Q22027Trigger_.alias, datas.Q22027Trigger_.script, datas.Q22027Trigger_.id, 0, datas.Q22027Trigger_.point.pos, datas.Q22027Trigger_.point.rot, true, false, 3)
    self:NotifyTo("Npc3045", 1, true)
end

function Quest22027:OnSubFinish2202703(arg1)
    print("OnSubFinish2202703")
end

function Quest22027:OnSubFailed2202703(arg1)
    print("OnSubFailed2202703")
end

function Quest22027:OnSubStart2202705(arg1)
    print("OnSubStart2202705")
end

function Quest22027:OnSubFinish2202705(arg1)
    print("OnSubFinish2202705")
end

function Quest22027:OnSubFailed2202705(arg1)
    print("OnSubFailed2202705")
end

function Quest22027:OnSubStart2202704(arg1)
    print("OnSubStart2202704")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.createxiangtai2, nil, nil, "")
end

function Quest22027:OnSubFinish2202704(arg1)
    print("OnSubFinish2202704")
    self:ShowBlackScreen(0.5, 1, 0.5, self.destroyxiangtai, nil, nil, "")
end

function Quest22027:OnSubFailed2202704(arg1)
    print("OnSubFailed2202704")
end

return Quest22027
