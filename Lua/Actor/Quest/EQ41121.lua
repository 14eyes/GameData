require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41121 = class("Quest41121", QuestActorProxy)
Quest41121.defaultAlias = "Quest41121"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41121:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41121:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4112104"] = self.OnSubStart4112104,
        ["4112101"] = self.OnSubStart4112101,
        ["4112102"] = self.OnSubStart4112102,
        ["4112103"] = self.OnSubStart4112103
    }
end

function Quest41121:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4112104"] = self.OnSubFinish4112104,
        ["4112101"] = self.OnSubFinish4112101,
        ["4112102"] = self.OnSubFinish4112102,
        ["4112103"] = self.OnSubFinish4112103
    }
end

function Quest41121:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4112104"] = self.OnSubFailed4112104,
        ["4112101"] = self.OnSubFailed4112101,
        ["4112102"] = self.OnSubFailed4112102,
        ["4112103"] = self.OnSubFailed4112103
    }
end

function Quest41121:Start()
    print("Start")
end

function Quest41121:OnDestroy()
    print("OnDestroy")
end

function Quest41121:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41121:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41121:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyNpc()
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41121:StartCount()
    print("StartCount")
    self:CountDownUIStart(100, 3, 3)
    self:CallDelay(104, self.CountDown)
end

function Quest41121:CountDown()
    print("CountDown Finished")
    if self:GetQuestVar(4112102, 1) == 1 then
        self:SetQuestVar(4112102, 0, 1)
        self:SetQuestVar(4112102, 1, 0)
    end

    local actor = actorMgr:GetActor(actorAlias)
    if actor ~= nil then
        print("countdown cause deliver fail")
        actor:FinishQuestID(true, 4112102)
    end
end

function Quest41121:ShowCountDownReminder()
    print("ShowCountDownReminder")
    self:NarratorOnlyTask(datas.CountDownFailReminder, nil, "")
end

function Quest41121:ShowWatcherFailReminder()
    print("ShowWatcherFailReminder")
    self:NarratorOnlyTask(datas.WatcherFailReminder, nil, "")
end

function Quest41121:DestroyNpc()
    print("DestroyNpc")
    self:ClearSpeechBubbleTask()
    self:DestroyQuestNpcActor(npcs.Npc1593Data.alias, 3)
end

function Quest41121:OnSubStart4112104(arg1)
    print("OnSubStart4112104")
end

function Quest41121:OnSubFinish4112104(arg1)
    self:SetNavigationByMainId(41121, true)
end

function Quest41121:OnSubFailed4112104(arg1)
    print("OnSubFailed4112104")
end

function Quest41121:OnSubStart4112101(arg1)
    print("OnSubStart4112101")
    self:CreateQuestNpc(arg1, npcs.Npc1593Data.id, 1)
    self:CreateSpeechBubbleTask(npcs.Npc1593Data.id, 411210501, 2, true, 1, 2)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41121:OnSubFinish4112101(arg1)
    print("OnSubFinish4112101")
    self:ActionSafeCall(self.StartCount)
end

function Quest41121:OnSubFailed4112101(arg1)
    print("OnSubFailed4112101")
end

function Quest41121:OnSubStart4112102(arg1)
    print("OnSubStart4112102")
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    self:SetQuestVar(arg1.QuestConfigId, 1, 1)
end

function Quest41121:OnSubFinish4112102(arg1)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    globalActor:LeaveWeather()
end

function Quest41121:OnSubFailed4112102(arg1)
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

function Quest41121:OnSubStart4112103(arg1)
    print("OnSubStart4112103")
end

function Quest41121:OnSubFinish4112103(arg1)
    print("OnSubFinish4112103")
    self:ShowBlackScreen(0.3, 1.5, 0.3, self.DestroyNpc, nil, nil, "")
end

function Quest41121:OnSubFailed4112103(arg1)
    print("OnSubFailed4112103")
end

return Quest41121
