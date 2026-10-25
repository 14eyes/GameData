require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41154 = class("Quest41154", QuestActorProxy)
Quest41154.defaultAlias = "Quest41154"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41154:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41154:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4115404"] = self.OnSubStart4115404,
        ["4115401"] = self.OnSubStart4115401,
        ["4115402"] = self.OnSubStart4115402,
        ["4115403"] = self.OnSubStart4115403
    }
end

function Quest41154:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4115404"] = self.OnSubFinish4115404,
        ["4115401"] = self.OnSubFinish4115401,
        ["4115402"] = self.OnSubFinish4115402,
        ["4115403"] = self.OnSubFinish4115403
    }
end

function Quest41154:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4115404"] = self.OnSubFailed4115404,
        ["4115401"] = self.OnSubFailed4115401,
        ["4115402"] = self.OnSubFailed4115402,
        ["4115403"] = self.OnSubFailed4115403
    }
end

function Quest41154:Start()
    print("Start")
end

function Quest41154:OnDestroy()
    print("OnDestroy")
end

function Quest41154:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41154:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41154:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyNpc()
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41154:StartCount()
    print("StartCount")
    self:CountDownUIStart(70, 3, 3)
    self:CallDelay(74, self.CountDown)
end

function Quest41154:CountDown()
    print("CountDown Finished")
    if self:GetQuestVar(4115402, 1) == 1 then
        self:SetQuestVar(4115402, 0, 1)
        self:SetQuestVar(4115402, 1, 0)
    end

    local actor = actorMgr:GetActor(actorAlias)
    if actor ~= nil then
        print("countdown cause deliver fail")
        actor:FinishQuestID(true, 4115402)
    end
end

function Quest41154:ShowCountDownReminder()
    print("ShowCountDownReminder")
    self:NarratorOnlyTask(datas.CountDownFailReminder, nil, "")
end

function Quest41154:ShowWatcherFailReminder()
    print("ShowWatcherFailReminder")
    self:NarratorOnlyTask(datas.WatcherFailReminder, nil, "")
end

function Quest41154:DestroyNpc()
    print("DestroyNpc")
    self:ClearSpeechBubbleTask()
    self:DestroyQuestNpcActor(npcs.Npc30027Data.alias, 3)
end

function Quest41154:OnSubStart4115404(arg1)
    print("OnSubStart4115404")
end

function Quest41154:OnSubFinish4115404(arg1)
    self:SetNavigationByMainId(41154, true)
end

function Quest41154:OnSubFailed4115404(arg1)
    print("OnSubFailed4115404")
end

function Quest41154:OnSubStart4115401(arg1)
    print("OnSubStart4115401")
    self:CreateQuestNpc(arg1, npcs.Npc30027Data.id, 1)
    self:CreateSpeechBubbleTask(npcs.Npc30027Data.id, 411540501, 2, true, 1, 2)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41154:OnSubFinish4115401(arg1)
    print("OnSubFinish4115401")
    self:ActionSafeCall(self.StartCount)
end

function Quest41154:OnSubFailed4115401(arg1)
    print("OnSubFailed4115401")
end

function Quest41154:OnSubStart4115402(arg1)
    print("OnSubStart4115402")
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    self:SetQuestVar(arg1.QuestConfigId, 1, 1)
end

function Quest41154:OnSubFinish4115402(arg1)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    globalActor:LeaveWeather()
end

function Quest41154:OnSubFailed4115402(arg1)
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

function Quest41154:OnSubStart4115403(arg1)
    print("OnSubStart4115403")
end

function Quest41154:OnSubFinish4115403(arg1)
    print("OnSubFinish4115403")
    self:ShowBlackScreen(0.3, 1.5, 0.3, self.DestroyNpc, nil, nil, "")
end

function Quest41154:OnSubFailed4115403(arg1)
    print("OnSubFailed4115403")
end

return Quest41154
