require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41148 = class("Quest41148", QuestActorProxy)
Quest41148.defaultAlias = "Quest41148"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41148:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41148:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4114804"] = self.OnSubStart4114804,
        ["4114801"] = self.OnSubStart4114801,
        ["4114802"] = self.OnSubStart4114802,
        ["4114803"] = self.OnSubStart4114803
    }
end

function Quest41148:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4114804"] = self.OnSubFinish4114804,
        ["4114801"] = self.OnSubFinish4114801,
        ["4114802"] = self.OnSubFinish4114802,
        ["4114803"] = self.OnSubFinish4114803
    }
end

function Quest41148:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4114804"] = self.OnSubFailed4114804,
        ["4114801"] = self.OnSubFailed4114801,
        ["4114802"] = self.OnSubFailed4114802,
        ["4114803"] = self.OnSubFailed4114803
    }
end

function Quest41148:Start()
    print("Start")
end

function Quest41148:OnDestroy()
    print("OnDestroy")
end

function Quest41148:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41148:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41148:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyNpc()
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41148:StartCount()
    print("StartCount")
    self:CountDownUIStart(115, 3, 3)
    self:CallDelay(119, self.CountDown)
end

function Quest41148:CountDown()
    print("CountDown Finished")
    if self:GetQuestVar(4114802, 1) == 1 then
        self:SetQuestVar(4114802, 0, 1)
        self:SetQuestVar(4114802, 1, 0)
    end

    local actor = actorMgr:GetActor(actorAlias)
    if actor ~= nil then
        print("countdown cause deliver fail")
        actor:FinishQuestID(true, 4114802)
    end
end

function Quest41148:ShowCountDownReminder()
    print("ShowCountDownReminder")
    self:NarratorOnlyTask(datas.CountDownFailReminder, nil, "")
end

function Quest41148:ShowWatcherFailReminder()
    print("ShowWatcherFailReminder")
    self:NarratorOnlyTask(datas.WatcherFailReminder, nil, "")
end

function Quest41148:DestroyNpc()
    print("DestroyNpc")
    self:ClearSpeechBubbleTask()
    self:DestroyQuestNpcActor(npcs.Npc30029Data.alias, 3)
end

function Quest41148:OnSubStart4114804(arg1)
    print("OnSubStart4114804")
end

function Quest41148:OnSubFinish4114804(arg1)
    self:SetNavigationByMainId(41148, true)
end

function Quest41148:OnSubFailed4114804(arg1)
    print("OnSubFailed4114804")
end

function Quest41148:OnSubStart4114801(arg1)
    print("OnSubStart4114801")
    self:CreateQuestNpc(arg1, npcs.Npc30029Data.id, 1)
    self:CreateSpeechBubbleTask(npcs.Npc30029Data.id, 411480501, 2, true, 1, 2)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41148:OnSubFinish4114801(arg1)
    print("OnSubFinish4114801")
    self:ActionSafeCall(self.StartCount)
end

function Quest41148:OnSubFailed4114801(arg1)
    print("OnSubFailed4114801")
end

function Quest41148:OnSubStart4114802(arg1)
    print("OnSubStart4114802")
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    self:SetQuestVar(arg1.QuestConfigId, 1, 1)
end

function Quest41148:OnSubFinish4114802(arg1)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    globalActor:LeaveWeather()
end

function Quest41148:OnSubFailed4114802(arg1)
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

function Quest41148:OnSubStart4114803(arg1)
    print("OnSubStart4114803")
end

function Quest41148:OnSubFinish4114803(arg1)
    print("OnSubFinish4114803")
    self:ShowBlackScreen(0.3, 1.5, 0.3, self.DestroyNpc, nil, nil, "")
end

function Quest41148:OnSubFailed4114803(arg1)
    print("OnSubFailed4114803")
end

return Quest41148
