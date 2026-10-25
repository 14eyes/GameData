require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41158 = class("Quest41158", QuestActorProxy)
Quest41158.defaultAlias = "Quest41158"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41158:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41158:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4115804"] = self.OnSubStart4115804,
        ["4115801"] = self.OnSubStart4115801,
        ["4115802"] = self.OnSubStart4115802,
        ["4115803"] = self.OnSubStart4115803
    }
end

function Quest41158:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4115804"] = self.OnSubFinish4115804,
        ["4115801"] = self.OnSubFinish4115801,
        ["4115802"] = self.OnSubFinish4115802,
        ["4115803"] = self.OnSubFinish4115803
    }
end

function Quest41158:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4115804"] = self.OnSubFailed4115804,
        ["4115801"] = self.OnSubFailed4115801,
        ["4115802"] = self.OnSubFailed4115802,
        ["4115803"] = self.OnSubFailed4115803
    }
end

function Quest41158:Start()
    print("Start")
end

function Quest41158:OnDestroy()
    print("OnDestroy")
end

function Quest41158:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41158:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41158:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyNpc()
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41158:StartCount()
    print("StartCount")
    self:CountDownUIStart(130, 3, 3)
    self:CallDelay(134, self.CountDown)
end

function Quest41158:CountDown()
    print("CountDown Finished")
    if self:GetQuestVar(4115802, 1) == 1 then
        self:SetQuestVar(4115802, 0, 1)
        self:SetQuestVar(4115802, 1, 0)
    end

    local actor = actorMgr:GetActor(actorAlias)
    if actor ~= nil then
        print("countdown cause deliver fail")
        actor:FinishQuestID(true, 4115802)
    end
end

function Quest41158:ShowCountDownReminder()
    print("ShowCountDownReminder")
    self:NarratorOnlyTask(datas.CountDownFailReminder, nil, "")
end

function Quest41158:ShowWatcherFailReminder()
    print("ShowWatcherFailReminder")
    self:NarratorOnlyTask(datas.WatcherFailReminder, nil, "")
end

function Quest41158:DestroyNpc()
    print("DestroyNpc")
    self:ClearSpeechBubbleTask()
    self:DestroyQuestNpcActor(npcs.Npc157601Data.alias, 3)
end

function Quest41158:OnSubStart4115804(arg1)
    print("OnSubStart4115804")
end

function Quest41158:OnSubFinish4115804(arg1)
    self:SetNavigationByMainId(41158, true)
end

function Quest41158:OnSubFailed4115804(arg1)
    print("OnSubFailed4115804")
end

function Quest41158:OnSubStart4115801(arg1)
    print("OnSubStart4115801")
    self:CreateQuestNpc(arg1, npcs.Npc157601Data.id, 1)
    self:CreateSpeechBubbleTask(npcs.Npc157601Data.id, 411580501, 2, true, 1, 2)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41158:OnSubFinish4115801(arg1)
    print("OnSubFinish4115801")
    self:ActionSafeCall(self.StartCount)
end

function Quest41158:OnSubFailed4115801(arg1)
    print("OnSubFailed4115801")
end

function Quest41158:OnSubStart4115802(arg1)
    print("OnSubStart4115802")
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    self:SetQuestVar(arg1.QuestConfigId, 1, 1)
end

function Quest41158:OnSubFinish4115802(arg1)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    globalActor:LeaveWeather()
end

function Quest41158:OnSubFailed4115802(arg1)
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

function Quest41158:OnSubStart4115803(arg1)
    print("OnSubStart4115803")
end

function Quest41158:OnSubFinish4115803(arg1)
    print("OnSubFinish4115803")
    self:ShowBlackScreen(0.3, 1.5, 0.3, self.DestroyNpc, nil, nil, "")
end

function Quest41158:OnSubFailed4115803(arg1)
    print("OnSubFailed4115803")
end

return Quest41158
