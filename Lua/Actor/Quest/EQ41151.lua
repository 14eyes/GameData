require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41151 = class("Quest41151", QuestActorProxy)
Quest41151.defaultAlias = "Quest41151"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41151:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41151:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4115104"] = self.OnSubStart4115104,
        ["4115101"] = self.OnSubStart4115101,
        ["4115102"] = self.OnSubStart4115102,
        ["4115103"] = self.OnSubStart4115103
    }
end

function Quest41151:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4115104"] = self.OnSubFinish4115104,
        ["4115101"] = self.OnSubFinish4115101,
        ["4115102"] = self.OnSubFinish4115102,
        ["4115103"] = self.OnSubFinish4115103
    }
end

function Quest41151:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4115104"] = self.OnSubFailed4115104,
        ["4115101"] = self.OnSubFailed4115101,
        ["4115102"] = self.OnSubFailed4115102,
        ["4115103"] = self.OnSubFailed4115103
    }
end

function Quest41151:Start()
    print("Start")
end

function Quest41151:OnDestroy()
    print("OnDestroy")
end

function Quest41151:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41151:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41151:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyNpc()
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41151:StartCount()
    print("StartCount")
    self:CountDownUIStart(115, 3, 3)
    self:CallDelay(119, self.CountDown)
end

function Quest41151:CountDown()
    print("CountDown Finished")
    if self:GetQuestVar(4115102, 1) == 1 then
        self:SetQuestVar(4115102, 0, 1)
        self:SetQuestVar(4115102, 1, 0)
    end

    local actor = actorMgr:GetActor(actorAlias)
    if actor ~= nil then
        print("countdown cause deliver fail")
        actor:FinishQuestID(true, 4115102)
    end
end

function Quest41151:ShowCountDownReminder()
    print("ShowCountDownReminder")
    self:NarratorOnlyTask(datas.CountDownFailReminder, nil, "")
end

function Quest41151:ShowWatcherFailReminder()
    print("ShowWatcherFailReminder")
    self:NarratorOnlyTask(datas.WatcherFailReminder, nil, "")
end

function Quest41151:DestroyNpc()
    print("DestroyNpc")
    self:ClearSpeechBubbleTask()
    self:DestroyQuestNpcActor(npcs.Npc30028Data.alias, 3)
end

function Quest41151:OnSubStart4115104(arg1)
    print("OnSubStart4115104")
end

function Quest41151:OnSubFinish4115104(arg1)
    self:SetNavigationByMainId(41151, true)
end

function Quest41151:OnSubFailed4115104(arg1)
    print("OnSubFailed4115104")
end

function Quest41151:OnSubStart4115101(arg1)
    print("OnSubStart4115101")
    self:CreateQuestNpc(arg1, npcs.Npc30028Data.id, 1)
    self:CreateSpeechBubbleTask(npcs.Npc30028Data.id, 411510501, 2, true, 1, 2)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41151:OnSubFinish4115101(arg1)
    print("OnSubFinish4115101")
    self:ActionSafeCall(self.StartCount)
end

function Quest41151:OnSubFailed4115101(arg1)
    print("OnSubFailed4115101")
end

function Quest41151:OnSubStart4115102(arg1)
    print("OnSubStart4115102")
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    self:SetQuestVar(arg1.QuestConfigId, 1, 1)
end

function Quest41151:OnSubFinish4115102(arg1)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    globalActor:LeaveWeather()
end

function Quest41151:OnSubFailed4115102(arg1)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    globalActor:LeaveWeather()
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 0)
    print("QuestFailType:" .. questVar)
    if questVar == 1 then
        self:ShowCountDownReminder()
    elseif questVar == 0 then
        self:ShowWatcherFailReminder()
    end
end

function Quest41151:OnSubStart4115103(arg1)
    print("OnSubStart4115103")
end

function Quest41151:OnSubFinish4115103(arg1)
    print("OnSubFinish4115103")
    self:ShowBlackScreen(0.3, 1.5, 0.3, self.DestroyNpc, nil, nil, "")
end

function Quest41151:OnSubFailed4115103(arg1)
    print("OnSubFailed4115103")
end

return Quest41151
