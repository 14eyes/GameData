require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41159 = class("Quest41159", QuestActorProxy)
Quest41159.defaultAlias = "Quest41159"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41159:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41159:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4115904"] = self.OnSubStart4115904,
        ["4115901"] = self.OnSubStart4115901,
        ["4115902"] = self.OnSubStart4115902,
        ["4115903"] = self.OnSubStart4115903
    }
end

function Quest41159:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4115904"] = self.OnSubFinish4115904,
        ["4115901"] = self.OnSubFinish4115901,
        ["4115902"] = self.OnSubFinish4115902,
        ["4115903"] = self.OnSubFinish4115903
    }
end

function Quest41159:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4115904"] = self.OnSubFailed4115904,
        ["4115901"] = self.OnSubFailed4115901,
        ["4115902"] = self.OnSubFailed4115902,
        ["4115903"] = self.OnSubFailed4115903
    }
end

function Quest41159:Start()
    print("Start")
end

function Quest41159:OnDestroy()
    print("OnDestroy")
end

function Quest41159:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41159:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41159:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyNpc()
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41159:StartCount()
    print("StartCount")
    self:CountDownUIStart(90, 3, 3)
    self:CallDelay(94, self.CountDown)
end

function Quest41159:CountDown()
    print("CountDown Finished")
    if self:GetQuestVar(4115902, 1) == 1 then
        self:SetQuestVar(4115902, 0, 1)
        self:SetQuestVar(4115902, 1, 0)
    end

    local actor = actorMgr:GetActor(actorAlias)
    if actor ~= nil then
        print("countdown cause deliver fail")
        actor:FinishQuestID(true, 4115902)
    end
end

function Quest41159:ShowCountDownReminder()
    print("ShowCountDownReminder")
    self:NarratorOnlyTask(datas.CountDownFailReminder, nil, "")
end

function Quest41159:ShowWatcherFailReminder()
    print("ShowWatcherFailReminder")
    self:NarratorOnlyTask(datas.WatcherFailReminder, nil, "")
end

function Quest41159:DestroyNpc()
    print("DestroyNpc")
    self:ClearSpeechBubbleTask()
    self:DestroyQuestNpcActor(npcs.Npc30027Data.alias, 3)
end

function Quest41159:OnSubStart4115904(arg1)
    print("OnSubStart4115904")
end

function Quest41159:OnSubFinish4115904(arg1)
    self:SetNavigationByMainId(41159, true)
end

function Quest41159:OnSubFailed4115904(arg1)
    print("OnSubFailed4115904")
end

function Quest41159:OnSubStart4115901(arg1)
    print("OnSubStart4115901")
    self:CreateQuestNpc(arg1, npcs.Npc30027Data.id, 1)
    self:CreateSpeechBubbleTask(npcs.Npc30027Data.id, 411590501, 2, true, 1, 2)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41159:OnSubFinish4115901(arg1)
    print("OnSubFinish4115901")
    self:ActionSafeCall(self.StartCount)
end

function Quest41159:OnSubFailed4115901(arg1)
    print("OnSubFailed4115901")
end

function Quest41159:OnSubStart4115902(arg1)
    print("OnSubStart4115902")
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    self:SetQuestVar(arg1.QuestConfigId, 1, 1)
end

function Quest41159:OnSubFinish4115902(arg1)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    globalActor:LeaveWeather()
end

function Quest41159:OnSubFailed4115902(arg1)
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

function Quest41159:OnSubStart4115903(arg1)
    print("OnSubStart4115903")
end

function Quest41159:OnSubFinish4115903(arg1)
    print("OnSubFinish4115903")
    self:ShowBlackScreen(0.3, 1.5, 0.3, self.DestroyNpc, nil, nil, "")
end

function Quest41159:OnSubFailed4115903(arg1)
    print("OnSubFailed4115903")
end

return Quest41159
