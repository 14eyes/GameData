require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41144 = class("Quest41144", QuestActorProxy)
Quest41144.defaultAlias = "Quest41144"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41144:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41144:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4114404"] = self.OnSubStart4114404,
        ["4114401"] = self.OnSubStart4114401,
        ["4114402"] = self.OnSubStart4114402,
        ["4114403"] = self.OnSubStart4114403
    }
end

function Quest41144:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4114404"] = self.OnSubFinish4114404,
        ["4114401"] = self.OnSubFinish4114401,
        ["4114402"] = self.OnSubFinish4114402,
        ["4114403"] = self.OnSubFinish4114403
    }
end

function Quest41144:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4114404"] = self.OnSubFailed4114404,
        ["4114401"] = self.OnSubFailed4114401,
        ["4114402"] = self.OnSubFailed4114402,
        ["4114403"] = self.OnSubFailed4114403
    }
end

function Quest41144:Start()
    print("Start")
end

function Quest41144:OnDestroy()
    print("OnDestroy")
end

function Quest41144:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41144:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41144:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyNpc()
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41144:StartCount()
    print("StartCount")
    self:CountDownUIStart(80, 3, 3)
    self:CallDelay(84, self.CountDown)
end

function Quest41144:CountDown()
    print("CountDown Finished")
    if self:GetQuestVar(4114402, 1) == 1 then
        self:SetQuestVar(4114402, 0, 1)
        self:SetQuestVar(4114402, 1, 0)
    end

    local actor = actorMgr:GetActor(actorAlias)
    if actor ~= nil then
        print("countdown cause deliver fail")
        actor:FinishQuestID(true, 4114402)
    end
end

function Quest41144:ShowCountDownReminder()
    print("ShowCountDownReminder")
    self:NarratorOnlyTask(datas.CountDownFailReminder, nil, "")
end

function Quest41144:ShowWatcherFailReminder()
    print("ShowWatcherFailReminder")
    self:NarratorOnlyTask(datas.WatcherFailReminder, nil, "")
end

function Quest41144:DestroyNpc()
    print("DestroyNpc")
    self:ClearSpeechBubbleTask()
    self:DestroyQuestNpcActor(npcs.Npc30027Data.alias, 3)
end

function Quest41144:OnSubStart4114404(arg1)
    print("OnSubStart4114404")
end

function Quest41144:OnSubFinish4114404(arg1)
    self:SetNavigationByMainId(41144, true)
end

function Quest41144:OnSubFailed4114404(arg1)
    print("OnSubFailed4114404")
end

function Quest41144:OnSubStart4114401(arg1)
    print("OnSubStart4114401")
    self:CreateQuestNpc(arg1, npcs.Npc30027Data.id, 1)
    self:CreateSpeechBubbleTask(npcs.Npc30027Data.id, 411440501, 2, true, 1, 2)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41144:OnSubFinish4114401(arg1)
    print("OnSubFinish4114401")
    self:ActionSafeCall(self.StartCount)
end

function Quest41144:OnSubFailed4114401(arg1)
    print("OnSubFailed4114401")
end

function Quest41144:OnSubStart4114402(arg1)
    print("OnSubStart4114402")
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    self:SetQuestVar(arg1.QuestConfigId, 1, 1)
end

function Quest41144:OnSubFinish4114402(arg1)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    globalActor:LeaveWeather()
end

function Quest41144:OnSubFailed4114402(arg1)
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

function Quest41144:OnSubStart4114403(arg1)
    print("OnSubStart4114403")
end

function Quest41144:OnSubFinish4114403(arg1)
    print("OnSubFinish4114403")
    self:ShowBlackScreen(0.3, 1.5, 0.3, self.DestroyNpc, nil, nil, "")
end

function Quest41144:OnSubFailed4114403(arg1)
    print("OnSubFailed4114403")
end

return Quest41144
