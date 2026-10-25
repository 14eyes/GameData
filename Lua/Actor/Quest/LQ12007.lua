require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12007 = class("Quest12007", QuestActorProxy)
Quest12007.defaultAlias = "Quest12007"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest12007:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest12007:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1200701"] = self.OnSubStart1200701,
        ["1200702"] = self.OnSubStart1200702,
        ["1200711"] = self.OnSubStart1200711,
        ["1200710"] = self.OnSubStart1200710,
        ["1200703"] = self.OnSubStart1200703,
        ["1200708"] = self.OnSubStart1200708,
        ["1200704"] = self.OnSubStart1200704,
        ["1200705"] = self.OnSubStart1200705,
        ["1200706"] = self.OnSubStart1200706,
        ["1200707"] = self.OnSubStart1200707,
        ["1200712"] = self.OnSubStart1200712,
        ["1200713"] = self.OnSubStart1200713
    }
end

function Quest12007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1200701"] = self.OnSubFinish1200701,
        ["1200702"] = self.OnSubFinish1200702,
        ["1200711"] = self.OnSubFinish1200711,
        ["1200710"] = self.OnSubFinish1200710,
        ["1200703"] = self.OnSubFinish1200703,
        ["1200708"] = self.OnSubFinish1200708,
        ["1200704"] = self.OnSubFinish1200704,
        ["1200705"] = self.OnSubFinish1200705,
        ["1200706"] = self.OnSubFinish1200706,
        ["1200707"] = self.OnSubFinish1200707,
        ["1200712"] = self.OnSubFinish1200712,
        ["1200713"] = self.OnSubFinish1200713
    }
end

function Quest12007:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1200701"] = self.OnSubFailed1200701,
        ["1200702"] = self.OnSubFailed1200702,
        ["1200711"] = self.OnSubFailed1200711,
        ["1200710"] = self.OnSubFailed1200710,
        ["1200703"] = self.OnSubFailed1200703,
        ["1200708"] = self.OnSubFailed1200708,
        ["1200704"] = self.OnSubFailed1200704,
        ["1200705"] = self.OnSubFailed1200705,
        ["1200706"] = self.OnSubFailed1200706,
        ["1200707"] = self.OnSubFailed1200707,
        ["1200712"] = self.OnSubFailed1200712,
        ["1200713"] = self.OnSubFailed1200713
    }
end

function Quest12007:Start()
    print("Start")
end

function Quest12007:OnDestroy()
    print("OnDestroy")
end

function Quest12007:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12007:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12007:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12007:ClearBoxPre()
    print("ClearBoxPre")
    self:SafeDestroyQuestNpc(npcs.Npc1013DataBox1.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest12007:ClearBoxAfter()
    print("ClearBoxAfter")
    self:SafeDestroyQuestNpc(npcs.Npc1013DataBox2.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest12007:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        self.ActionSafeCall(self, function()
            self:CallDelay(1.5, function()
                self:NarratorOnlyTaskByData(datas.NarratorWithId)
            end)
        end)

        local actor = actorMgr:GetActor(clientData.ActorAlias)
        print("Fail to openGate narrator")
    end

    if arg1 == 2 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor:GetSubQuestState(1200712) == 2 then
            actor:FinishQuestID(false, 1200712)
        end

        print("Start Talk Hide Box Change")
    end

    if arg1 == 3 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor:GetSubQuestState(1200713) == 2 then
            actor:FinishQuestID(false, 1200713)
        end

        print("Start Talk Change Time")
    end
end

function Quest12007:OnSubStart1200701(arg1)
    print("OnSubStart1200701")
    actorMgr:CreateActorWithPos(datas.Q12007TriggerIn_.alias, datas.Q12007TriggerIn_.script, datas.Q12007TriggerIn_.id, 0, datas.Q12007TriggerIn_.point.pos, datas.Q12007TriggerIn_.point.rot, true, false, 3)
end

function Quest12007:OnSubFinish1200701(arg1)
    print("OnSubFinish1200701")
end

function Quest12007:OnSubFailed1200701(arg1)
    print("OnSubFailed1200701")
end

function Quest12007:OnSubStart1200702(arg1)
    print("OnSubStart1200702")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc1013DataBox1.alias})
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc1013DataBox1.id, 1)
        self:RequestInteraction("Npc1013")
    end, nil, questNpcCreateTask)
end

function Quest12007:OnSubFinish1200702(arg1)
    print("OnSubFinish1200702")
    self:ActionSafeCall(self.ClearBoxPre)
end

function Quest12007:OnSubFailed1200702(arg1)
    print("OnSubFailed1200702")
end

function Quest12007:OnSubStart1200711(arg1)
    print("OnSubStart1200711")
end

function Quest12007:OnSubFinish1200711(arg1)
    print("OnSubFinish1200711")
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest12007:OnSubFailed1200711(arg1)
    print("OnSubFailed1200711")
end

function Quest12007:OnSubStart1200710(arg1)
    print("OnSubStart1200710")
end

function Quest12007:OnSubFinish1200710(arg1)
    print("OnSubFinish1200710")
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest12007:OnSubFailed1200710(arg1)
    print("OnSubFailed1200710")
end

function Quest12007:OnSubStart1200703(arg1)
    print("OnSubStart1200703")
end

function Quest12007:OnSubFinish1200703(arg1)
    print("OnSubFinish1200703")
end

function Quest12007:OnSubFailed1200703(arg1)
    print("OnSubFailed1200703")
end

function Quest12007:OnSubStart1200708(arg1)
    print("OnSubStart1200708")
end

function Quest12007:OnSubFinish1200708(arg1)
    print("OnSubFinish1200708")
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest12007:OnSubFailed1200708(arg1)
    print("OnSubFailed1200708")
end

function Quest12007:OnSubStart1200704(arg1)
    print("OnSubStart1200704")
end

function Quest12007:OnSubFinish1200704(arg1)
    print("OnSubFinish1200704")
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest12007:OnSubFailed1200704(arg1)
    print("OnSubFailed1200704")
end

function Quest12007:OnSubStart1200705(arg1)
    print("OnSubStart1200705")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc1013DataBox2.alias})
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc1013DataBox2.id, 2)
        self:RequestInteraction("Npc1013")
    end, nil, questNpcCreateTask)
end

function Quest12007:OnSubFinish1200705(arg1)
    print("OnSubFinish1200705")
    self:ActionSafeCall(self.ClearBoxAfter)
end

function Quest12007:OnSubFailed1200705(arg1)
    print("OnSubFailed1200705")
end

function Quest12007:OnSubStart1200706(arg1)
    print("OnSubStart1200706")
    actorMgr:CreateActorWithPos(datas.Q12007TriggerTalkEnd_.alias, datas.Q12007TriggerTalkEnd_.script, datas.Q12007TriggerTalkEnd_.id, 0, datas.Q12007TriggerTalkEnd_.point.pos, datas.Q12007TriggerTalkEnd_.point.rot, true, false, 3)
end

function Quest12007:OnSubFinish1200706(arg1)
    print("OnSubFinish1200706")
end

function Quest12007:OnSubFailed1200706(arg1)
    print("OnSubFailed1200706")
end

function Quest12007:OnSubStart1200707(arg1)
    print("OnSubStart1200707")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc1013DataBox3.alias})
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc1013DataBox3.id, 3)
        self:RequestInteraction("Npc1013")
    end, nil, questNpcCreateTask)
end

function Quest12007:OnSubFinish1200707(arg1)
    print("OnSubFinish1200707")
    self:ActionSafeCall(self.ClearBoxAfter)
end

function Quest12007:OnSubFailed1200707(arg1)
    print("OnSubFailed1200707")
end

function Quest12007:OnSubStart1200712(arg1)
    print("OnSubStart1200712")
end

function Quest12007:OnSubFinish1200712(arg1)
    print("OnSubFinish1200712")
end

function Quest12007:OnSubFailed1200712(arg1)
    print("OnSubFailed1200712")
end

function Quest12007:OnSubStart1200713(arg1)
    print("OnSubStart1200713")
end

function Quest12007:OnSubFinish1200713(arg1)
    print("OnSubFinish1200713")
end

function Quest12007:OnSubFailed1200713(arg1)
    print("OnSubFailed1200713")
end

return Quest12007
