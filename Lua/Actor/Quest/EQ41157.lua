require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41157 = class("Quest41157", QuestActorProxy)
Quest41157.defaultAlias = "Quest41157"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41157:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41157:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4115704"] = self.OnSubStart4115704,
        ["4115701"] = self.OnSubStart4115701,
        ["4115702"] = self.OnSubStart4115702,
        ["4115703"] = self.OnSubStart4115703
    }
end

function Quest41157:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4115704"] = self.OnSubFinish4115704,
        ["4115701"] = self.OnSubFinish4115701,
        ["4115702"] = self.OnSubFinish4115702,
        ["4115703"] = self.OnSubFinish4115703
    }
end

function Quest41157:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4115704"] = self.OnSubFailed4115704,
        ["4115701"] = self.OnSubFailed4115701,
        ["4115702"] = self.OnSubFailed4115702,
        ["4115703"] = self.OnSubFailed4115703
    }
end

function Quest41157:Start()
    print("Start")
end

function Quest41157:OnDestroy()
    print("OnDestroy")
end

function Quest41157:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41157:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41157:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyNpc()
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41157:StartCount()
    print("StartCount")
    self:CountDownUIStart(95, 3, 3)
    self:CallDelay(99, self.CountDown)
end

function Quest41157:CountDown()
    print("CountDown Finished")
    if self:GetQuestVar(4115702, 1) == 1 then
        self:SetQuestVar(4115702, 0, 1)
        self:SetQuestVar(4115702, 1, 0)
    end

    local actor = actorMgr:GetActor(actorAlias)
    if actor ~= nil then
        print("countdown cause deliver fail")
        actor:FinishQuestID(true, 4115702)
    end
end

function Quest41157:ShowCountDownReminder()
    print("ShowCountDownReminder")
    self:NarratorOnlyTask(datas.CountDownFailReminder, nil, "")
end

function Quest41157:ShowWatcherFailReminder()
    print("ShowWatcherFailReminder")
    self:NarratorOnlyTask(datas.WatcherFailReminder, nil, "")
end

function Quest41157:DestroyNpc()
    print("DestroyNpc")
    self:ClearSpeechBubbleTask()
    self:DestroyQuestNpcActor(npcs.Npc30029Data.alias, 3)
end

function Quest41157:OnSubStart4115704(arg1)
    print("OnSubStart4115704")
end

function Quest41157:OnSubFinish4115704(arg1)
    self:SetNavigationByMainId(41157, true)
end

function Quest41157:OnSubFailed4115704(arg1)
    print("OnSubFailed4115704")
end

function Quest41157:OnSubStart4115701(arg1)
    print("OnSubStart4115701")
    self:CreateQuestNpc(arg1, npcs.Npc30029Data.id, 1)
    self:CreateSpeechBubbleTask(npcs.Npc30029Data.id, 411570501, 2, true, 1, 2)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41157:OnSubFinish4115701(arg1)
    print("OnSubFinish4115701")
    self:ActionSafeCall(self.StartCount)
end

function Quest41157:OnSubFailed4115701(arg1)
    print("OnSubFailed4115701")
end

function Quest41157:OnSubStart4115702(arg1)
    print("OnSubStart4115702")
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    self:SetQuestVar(arg1.QuestConfigId, 1, 1)
end

function Quest41157:OnSubFinish4115702(arg1)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    globalActor:LeaveWeather()
end

function Quest41157:OnSubFailed4115702(arg1)
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

function Quest41157:OnSubStart4115703(arg1)
    print("OnSubStart4115703")
end

function Quest41157:OnSubFinish4115703(arg1)
    print("OnSubFinish4115703")
    self:ShowBlackScreen(0.3, 1.5, 0.3, self.DestroyNpc, nil, nil, "")
end

function Quest41157:OnSubFailed4115703(arg1)
    print("OnSubFailed4115703")
end

return Quest41157
