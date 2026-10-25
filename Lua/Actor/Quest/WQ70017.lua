require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70017 = class("Quest70017", QuestActorProxy)
Quest70017.defaultAlias = "Quest70017"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70017:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70017:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7001701"] = self.OnSubStart7001701,
        ["7001702"] = self.OnSubStart7001702,
        ["7001703"] = self.OnSubStart7001703,
        ["7001704"] = self.OnSubStart7001704
    }
end

function Quest70017:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7001701"] = self.OnSubFinish7001701,
        ["7001702"] = self.OnSubFinish7001702,
        ["7001703"] = self.OnSubFinish7001703,
        ["7001704"] = self.OnSubFinish7001704
    }
end

function Quest70017:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7001701"] = self.OnSubFailed7001701,
        ["7001702"] = self.OnSubFailed7001702,
        ["7001703"] = self.OnSubFailed7001703,
        ["7001704"] = self.OnSubFailed7001704
    }
end

function Quest70017:Start()
    print("Start")
end

function Quest70017:OnDestroy()
    print("OnDestroy")
end

function Quest70017:OnMainFinished(arg1)
    print("OnMainFinished")
    actorMgr:DestroyEntityActor(datas.Q70017Trigger_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc11007Data1.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70017:OnMainFailed(arg1)
    print("OnMainFailed")
    actorMgr:DestroyEntityActor(datas.Q70017Trigger_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc11007Data1.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70017:OnMainCanceled(arg1)
    print("OnMainCanceled")
    actorMgr:DestroyEntityActor(datas.Q70017Trigger_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc11007Data1.alias, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest70017:QiuqiuMotion(arg1)
    self:GetQuestNpcActor(npcs.Npc11007Data1.alias):DoFreeStyle(11, true, nil, true, true)
end

function Quest70017:Qiuqiutick(arg1)
    self:CallDelay(10, self.QiuqiuMotion)
end

function Quest70017:OnSubStart7001701(arg1)
    print("OnSubStart7001701")
    self:CreateQuestNpc(arg1, npcs.Npc11007Data1.id, 1)
    self:QiuqiuMotion()
end

function Quest70017:OnSubFinish7001701(arg1)
    print("OnSubFinish7001701")
end

function Quest70017:OnSubFailed7001701(arg1)
    print("OnSubFailed7001701")
end

function Quest70017:OnSubStart7001702(arg1)
    print("OnSubStart7001702")
    actorMgr:CreateActorWithPos(datas.Q70017Trigger_.alias, datas.Q70017Trigger_.script, datas.Q70017Trigger_.id, 0, datas.Q70017Trigger_.point.pos, datas.Q70017Trigger_.point.rot, true, false, 3)
end

function Quest70017:OnSubFinish7001702(arg1)
    print("OnSubFinish7001702")
end

function Quest70017:OnSubFailed7001702(arg1)
    print("OnSubFailed7001702")
end

function Quest70017:OnSubStart7001703(arg1)
    print("OnSubStart7001703")
end

function Quest70017:OnSubFinish7001703(arg1)
    print("OnSubFinish7001703")
end

function Quest70017:OnSubFailed7001703(arg1)
    print("OnSubFailed7001703")
end

function Quest70017:OnSubStart7001704(arg1)
    print("OnSubStart7001704")
    self:CreateQuestNpc(arg1, npcs.Npc11007Data1.id, 1)
end

function Quest70017:OnSubFinish7001704(arg1)
    print("OnSubFinish7001704")
end

function Quest70017:OnSubFailed7001704(arg1)
    print("OnSubFailed7001704")
end

return Quest70017
