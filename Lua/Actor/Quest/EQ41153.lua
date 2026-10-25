require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41153 = class("Quest41153", QuestActorProxy)
Quest41153.defaultAlias = "Quest41153"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41153:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41153:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4115304"] = self.OnSubStart4115304,
        ["4115301"] = self.OnSubStart4115301,
        ["4115302"] = self.OnSubStart4115302,
        ["4115303"] = self.OnSubStart4115303
    }
end

function Quest41153:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4115304"] = self.OnSubFinish4115304,
        ["4115301"] = self.OnSubFinish4115301,
        ["4115302"] = self.OnSubFinish4115302,
        ["4115303"] = self.OnSubFinish4115303
    }
end

function Quest41153:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4115304"] = self.OnSubFailed4115304,
        ["4115301"] = self.OnSubFailed4115301,
        ["4115302"] = self.OnSubFailed4115302,
        ["4115303"] = self.OnSubFailed4115303
    }
end

function Quest41153:Start()
    print("Start")
end

function Quest41153:OnDestroy()
    print("OnDestroy")
end

function Quest41153:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41153:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41153:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyNpc()
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41153:StartCount()
    print("StartCount")
    self:CountDownUIStart(80, 3, 3)
    self:CallDelay(84, self.CountDown)
end

function Quest41153:CountDown()
    print("CountDown Finished")
    if self:GetQuestVar(4115302, 1) == 1 then
        self:SetQuestVar(4115302, 0, 1)
        self:SetQuestVar(4115302, 1, 0)
    end

    local actor = actorMgr:GetActor(actorAlias)
    if actor ~= nil then
        print("countdown cause deliver fail")
        actor:FinishQuestID(true, 4115302)
    end
end

function Quest41153:ShowCountDownReminder()
    print("ShowCountDownReminder")
    self:NarratorOnlyTask(datas.CountDownFailReminder, nil, "")
end

function Quest41153:ShowWatcherFailReminder()
    print("ShowWatcherFailReminder")
    self:NarratorOnlyTask(datas.WatcherFailReminder, nil, "")
end

function Quest41153:DestroyNpc()
    print("DestroyNpc")
    self:ClearSpeechBubbleTask()
    self:DestroyQuestNpcActor(npcs.Npc30028Data.alias, 3)
end

function Quest41153:OnSubStart4115304(arg1)
    print("OnSubStart4115304")
end

function Quest41153:OnSubFinish4115304(arg1)
    self:SetNavigationByMainId(41153, true)
end

function Quest41153:OnSubFailed4115304(arg1)
    print("OnSubFailed4115304")
end

function Quest41153:OnSubStart4115301(arg1)
    print("OnSubStart4115301")
    self:CreateQuestNpc(arg1, npcs.Npc30028Data.id, 1)
    self:CreateSpeechBubbleTask(npcs.Npc30028Data.id, 411530501, 2, true, 1, 2)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41153:OnSubFinish4115301(arg1)
    print("OnSubFinish4115301")
    self:ActionSafeCall(self.StartCount)
end

function Quest41153:OnSubFailed4115301(arg1)
    print("OnSubFailed4115301")
end

function Quest41153:OnSubStart4115302(arg1)
    print("OnSubStart4115302")
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    self:SetQuestVar(arg1.QuestConfigId, 1, 1)
end

function Quest41153:OnSubFinish4115302(arg1)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    globalActor:LeaveWeather()
end

function Quest41153:OnSubFailed4115302(arg1)
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

function Quest41153:OnSubStart4115303(arg1)
    print("OnSubStart4115303")
end

function Quest41153:OnSubFinish4115303(arg1)
    print("OnSubFinish4115303")
    self:ShowBlackScreen(0.3, 1.5, 0.3, self.DestroyNpc, nil, nil, "")
end

function Quest41153:OnSubFailed4115303(arg1)
    print("OnSubFailed4115303")
end

return Quest41153
