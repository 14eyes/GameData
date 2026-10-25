require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest2007 = class("Quest2007", QuestActorProxy)
Quest2007.defaultAlias = "Quest2007"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest2007:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest2007:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["200701"] = self.OnSubStart200701,
        ["200710"] = self.OnSubStart200710,
        ["200702"] = self.OnSubStart200702,
        ["200703"] = self.OnSubStart200703,
        ["200704"] = self.OnSubStart200704,
        ["200706"] = self.OnSubStart200706,
        ["200705"] = self.OnSubStart200705,
        ["200709"] = self.OnSubStart200709,
        ["200707"] = self.OnSubStart200707,
        ["200711"] = self.OnSubStart200711,
        ["200708"] = self.OnSubStart200708
    }
end

function Quest2007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["200701"] = self.OnSubFinish200701,
        ["200710"] = self.OnSubFinish200710,
        ["200702"] = self.OnSubFinish200702,
        ["200703"] = self.OnSubFinish200703,
        ["200704"] = self.OnSubFinish200704,
        ["200706"] = self.OnSubFinish200706,
        ["200705"] = self.OnSubFinish200705,
        ["200709"] = self.OnSubFinish200709,
        ["200707"] = self.OnSubFinish200707,
        ["200711"] = self.OnSubFinish200711,
        ["200708"] = self.OnSubFinish200708
    }
end

function Quest2007:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["200701"] = self.OnSubFailed200701,
        ["200710"] = self.OnSubFailed200710,
        ["200702"] = self.OnSubFailed200702,
        ["200703"] = self.OnSubFailed200703,
        ["200704"] = self.OnSubFailed200704,
        ["200706"] = self.OnSubFailed200706,
        ["200705"] = self.OnSubFailed200705,
        ["200709"] = self.OnSubFailed200709,
        ["200707"] = self.OnSubFailed200707,
        ["200711"] = self.OnSubFailed200711,
        ["200708"] = self.OnSubFailed200708
    }
end

function Quest2007:Start()
    print("Start")
end

function Quest2007:OnDestroy()
    print("OnDestroy")
end

function Quest2007:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest2007:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest2007:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest2007:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        self:SetQuestVar(200710, 0, 1)
        print("Invoke 1")
        local questVar = self:GetQuestVar(200710, 1)
        local v = self:GetQuestVar(200710, 2)
        if questVar == 1 and v == 1 then
            self:SetQuestVar(200710, 3, 1)
            print("questvar index 3 value 1")
        end
    elseif arg1 == 2 then
        print("Invoke 2")
        self:SetQuestVar(200710, 1, 1)
        local questVar = self:GetQuestVar(200710, 0)
        local v = self:GetQuestVar(200710, 2)
        if questVar == 1 and v == 1 then
            print("questvar index 3 value 1")
            self:SetQuestVar(200710, 3, 1)
            print("questvar index 3 value 1")
        end
    elseif arg1 == 3 then
        print("Invoke 3")
        self:SetQuestVar(200710, 2, 1)
        local questVar = self:GetQuestVar(200710, 0)
        local v = self:GetQuestVar(200710, 1)
        if questVar == 1 and v == 1 then
            self:SetQuestVar(200710, 3, 1)
            print("questvar index 3 value 1")
        end
    end

    if arg1 == 10 then
        print("Invoke 2")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            print("***************get quest success")
            actor:FinishQuestID(false, 200707)
        end
    end
end

function Quest2007:OnSubStart200701(arg1)
    print("OnSubStart200701")
    actorMgr:CreateActorWithPos(datas.Q200701Trigger_.alias, datas.Q200701Trigger_.script, datas.Q200701Trigger_.id, 0, datas.Q200701Trigger_.point.pos, datas.Q200701Trigger_.point.rot, true, false, 1061)
end

function Quest2007:OnSubFinish200701(arg1)
    print("OnSubFinish200701")
    self:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 1061)
    self:ShowBlackScreen(0, 4, 0, function(arg1)
        arg1:TransmitPlayerWithTextByQuestId(200701, 1, datas.TextmapId, 2)
    end, nil, task, "QUEST_Black_Q1200010")
end

function Quest2007:OnSubFailed200701(arg1)
    print("OnSubFailed200701")
end

function Quest2007:OnSubStart200710(arg1)
    print("OnSubStart200710")
    actorMgr:CreateActorWithPos(datas.Q200710Trigger_.alias, datas.Q200710Trigger_.script, datas.Q200710Trigger_.id, 0, datas.Q200710Trigger_.point.pos, datas.Q200710Trigger_.point.rot, true, false, 1060)
end

function Quest2007:OnSubFinish200710(arg1)
    print("OnSubFinish200710")
end

function Quest2007:OnSubFailed200710(arg1)
    print("OnSubFailed200710")
end

function Quest2007:OnSubStart200702(arg1)
    print("OnSubStart200702")
    self:ActionSafeCall(function(arg1)
        arg1:CreateQuestNpcById(200702, npcs.Npc1013Data.id, 7)
    end)

    self:CreateQuestNpc(arg1, npcs.Npc12008Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12009Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc12011Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc1033Data.id, 6)
    actorMgr:CreateActorWithPos(datas.Q200702Trigger_.alias, datas.Q200702Trigger_.script, datas.Q200702Trigger_.id, 0, datas.Q200702Trigger_.point.pos, datas.Q200702Trigger_.point.rot, true, false, 3)
end

function Quest2007:OnSubFinish200702(arg1)
    print("OnSubFinish200702")
    self:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12008Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12009Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12011Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 3)
end

function Quest2007:OnSubFailed200702(arg1)
    print("OnSubFailed200702")
end

function Quest2007:OnSubStart200703(arg1)
    self:NotifyTo("Npc3066", 1, true)
    self:NotifyTo("Npc3036", 1, true)
    self:NotifyTo("Npc3037", 1, true)
    print("OnSubStart200703")
end

function Quest2007:OnSubFinish200703(arg1)
    print("OnSubFinish200703")
    self:SafeDestroyQuestNpc(npcs.Npc1033Data.alias, 3)
    self:LightNotifyTo("Npc3066", 0, true)
    self:LightNotifyTo("Npc3036", 0, true)
    self:LightNotifyTo("Npc3037", 0, true)
end

function Quest2007:OnSubFailed200703(arg1)
    print("OnSubFailed200703")
end

function Quest2007:OnSubStart200704(arg1)
    print("OnSubStart200704")
    self:CreateQuestNpc(arg1, npcs.PaimonData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1035Data.id, 2)
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest2007:OnSubFinish200704(arg1)
    print("OnSubFinish200704")
    self:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 20111)
end

function Quest2007:OnSubFailed200704(arg1)
    print("OnSubFailed200704")
end

function Quest2007:OnSubStart200706(arg1)
    print("OnSubStart200706")
    self:CreateQuestNpc(arg1, npcs.Npc12009Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12012Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc12010Data.id, 5)
    actorMgr:CreateActorWithPos(datas.Q200706Trigger_.alias, datas.Q200706Trigger_.script, datas.Q200706Trigger_.id, 0, datas.Q200706Trigger_.point.pos, datas.Q200706Trigger_.point.rot, true, false, 20111)
end

function Quest2007:OnSubFinish200706(arg1)
    print("OnSubFinish200706")
    self:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 20111)
end

function Quest2007:OnSubFailed200706(arg1)
    print("OnSubFailed200706")
end

function Quest2007:OnSubStart200705(arg1)
    print("OnSubStart200705")
    self:CreateQuestNpc(arg1, npcs.Npc12012Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc12012Data.alias):DoFreeStyle(4120, true, nil, true, true, false)
    actorMgr:CreateActorWithPos(datas.Q200705Trigger_.alias, datas.Q200705Trigger_.script, datas.Q200705Trigger_.id, 0, datas.Q200705Trigger_.point.pos, datas.Q200705Trigger_.point.rot, true, false, 20111)
end

function Quest2007:OnSubFinish200705(arg1)
    print("OnSubFinish200705")
    self:SafeDestroyQuestNpc(npcs.Npc12009Data.alias, 20111)
    self:SafeDestroyQuestNpc(npcs.Npc12012Data.alias, 20111)
    self:SafeDestroyQuestNpc(npcs.Npc12010Data.alias, 20111)
end

function Quest2007:OnSubFailed200705(arg1)
    print("OnSubFailed200705")
end

function Quest2007:OnSubStart200709(arg1)
    print("OnSubStart200709")
    actorMgr:CreateActorWithPos(datas.Q200709Trigger_.alias, datas.Q200709Trigger_.script, datas.Q200709Trigger_.id, 0, datas.Q200709Trigger_.point.pos, datas.Q200709Trigger_.point.rot, true, false, 3)
end

function Quest2007:OnSubFinish200709(arg1)
    print("OnSubFinish200709")
    self:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
end

function Quest2007:OnSubFailed200709(arg1)
    print("OnSubFailed200709")
end

function Quest2007:OnSubStart200707(arg1)
    print("OnSubStart200707")
end

function Quest2007:OnSubFinish200707(arg1)
    print("OnSubFinish200707")
end

function Quest2007:OnSubFailed200707(arg1)
    print("OnSubFailed200707")
end

function Quest2007:OnSubStart200711(arg1)
    print("OnSubStart200711")
    self:CreateQuestNpc(arg1, npcs.Npc1013Data.id, 3)
    actorMgr:CreateActorWithPos(datas.Q200707Trigger_.alias, datas.Q200707Trigger_.script, datas.Q200707Trigger_.id, 0, datas.Q200707Trigger_.point.pos, datas.Q200707Trigger_.point.rot, true, false, 1060)
end

function Quest2007:OnSubFinish200711(arg1)
    print("OnSubFinish200711")
    self:SafeDestroyQuestNpc(npcs.Npc1033Data.alias, 1060)
    self:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 1060)
end

function Quest2007:OnSubFailed200711(arg1)
    print("OnSubFailed200711")
end

function Quest2007:OnSubStart200708(arg1)
    print("OnSubStart200708")
end

function Quest2007:OnSubFinish200708(arg1)
    print("OnSubFinish200708")
end

function Quest2007:OnSubFailed200708(arg1)
    print("OnSubFailed200708")
end

return Quest2007
