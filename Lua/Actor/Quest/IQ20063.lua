require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20063 = class("Quest20063", QuestActorProxy)
Quest20063.defaultAlias = "Quest20063"
local clientData
local mainID
local actorAlias
local subIDs
local actors
local datas

function Quest20063:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    actors = clientData.Actors
    datas = clientData.Datas
end

function Quest20063:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2006301"] = self.OnSubStart2006301,
        ["2006302"] = self.OnSubStart2006302,
        ["2006303"] = self.OnSubStart2006303,
        ["2006304"] = self.OnSubStart2006304,
        ["2006305"] = self.OnSubStart2006305,
        ["2006306"] = self.OnSubStart2006306,
        ["2006307"] = self.OnSubStart2006307,
        ["2006308"] = self.OnSubStart2006308,
        ["2006309"] = self.OnSubStart2006309,
        ["2006310"] = self.OnSubStart2006310
    }
end

function Quest20063:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2006301"] = self.OnSubFinish2006301,
        ["2006302"] = self.OnSubFinish2006302,
        ["2006303"] = self.OnSubFinish2006303,
        ["2006304"] = self.OnSubFinish2006304,
        ["2006305"] = self.OnSubFinish2006305,
        ["2006306"] = self.OnSubFinish2006306,
        ["2006307"] = self.OnSubFinish2006307,
        ["2006308"] = self.OnSubFinish2006308,
        ["2006309"] = self.OnSubFinish2006309,
        ["2006310"] = self.OnSubFinish2006310
    }
end

function Quest20063:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2006301"] = self.OnSubFailed2006301,
        ["2006302"] = self.OnSubFailed2006302,
        ["2006303"] = self.OnSubFailed2006303,
        ["2006304"] = self.OnSubFailed2006304,
        ["2006305"] = self.OnSubFailed2006305,
        ["2006306"] = self.OnSubFailed2006306,
        ["2006307"] = self.OnSubFailed2006307,
        ["2006308"] = self.OnSubFailed2006308,
        ["2006309"] = self.OnSubFailed2006309,
        ["2006310"] = self.OnSubFailed2006310
    }
end

function Quest20063:ClearNPC(arg1)
    print("ClearNPC")
    actorMgr:DestroyEntityActor(actors.StanleyData.alias, 3, false)
    actorMgr:DestroyEntityActor(actors.JackData.alias, 3, false)
    actorMgr:DestroyEntityActor(actors.CyrusData.alias, 3, false)
    self:LightNotifyTo(actors.StanleyDaily1Data.alias, 0, true)
    self:LightNotifyTo(actors.StanleyDaily2Data.alias, 0, true)
    self:LightNotifyTo(actors.CyrusDaily1Data.alias, 0, true)
    self:LightNotifyTo(actors.CyrusDaily2Data.alias, 0, true)
    self:LightNotifyTo(actors.JackDaily1Data.alias, 0, true)
    self:LightNotifyTo(actors.JackDaily2Data.alias, 0, true)
end

function Quest20063:JackFreeStyle(arg1)
    print("JackFreeStyle")
    self:GetQuestNpcActor(actors.JackData.alias):DoFreeStyle(1270)
end

function Quest20063:Start()
    print("Start")
end

function Quest20063:OnDestroy()
    print("OnDestroy")
end

function Quest20063:OnSubStart2006301(arg1)
    print("OnSubStart2006301")
    self:CreateQuestNpc(arg1, actors.StanleyData.id, 1)
    local questNpcActor = self:GetQuestNpcActor(actors.StanleyData.alias)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:DoFreeStyle(1230)
    self:CreateQuestNpc(arg1, actors.CyrusData.id, 2)
    local v = self:GetQuestNpcActor(actors.CyrusData.alias)
    v:DoFreeStateTrigger()
    v:DoFreeStyle(7030)
    self:CreateQuestNpc(arg1, actors.JackData.id, 3)
    local questNpcActor2 = self:GetQuestNpcActor(actors.JackData.alias)
    questNpcActor2:DoFreeStateTrigger()
    questNpcActor2:DoFreeStyle(1270)
    self:NotifyTo(actors.StanleyDaily1Data.alias, 1, true)
    self:NotifyTo(actors.StanleyDaily2Data.alias, 1, true)
    self:NotifyTo(actors.CyrusDaily1Data.alias, 1, true)
    self:NotifyTo(actors.CyrusDaily2Data.alias, 1, true)
    self:NotifyTo(actors.JackDaily1Data.alias, 1, true)
    self:NotifyTo(actors.JackDaily2Data.alias, 1, true)
    self:SetQuestVarWithInterval(arg1.QuestConfigId, 0, 1, 3)
    self:GetQuestVar(arg1.QuestConfigId, 0)
end

function Quest20063:OnSubFinish2006301(arg1)
    print("OnSubFinish2006301")
end

function Quest20063:OnSubFailed2006301(arg1)
    print("OnSubFailed2006301")
end

function Quest20063:OnSubStart2006302(arg1)
    print("OnSubStart2006302")
    self:NotifyTo(actors.StanleyDaily1Data.alias, 1, true)
    self:NotifyTo(actors.StanleyDaily2Data.alias, 1, true)
    self:NotifyTo(actors.CyrusDaily1Data.alias, 1, true)
    self:NotifyTo(actors.CyrusDaily2Data.alias, 1, true)
    self:NotifyTo(actors.JackDaily1Data.alias, 1, true)
    self:NotifyTo(actors.JackDaily2Data.alias, 1, true)
end

function Quest20063:OnSubFinish2006302(arg1)
    print("OnSubFinish2006302")
    self:NarratorOnlyTask(datas.FireSlimeReminder)
end

function Quest20063:OnSubFailed2006302(arg1)
    print("OnSubFailed2006302")
end

function Quest20063:OnSubStart2006303(arg1)
    print("OnSubStart2006303")
    self:NotifyTo(actors.StanleyDaily1Data.alias, 1, true)
    self:NotifyTo(actors.StanleyDaily2Data.alias, 1, true)
    self:NotifyTo(actors.CyrusDaily1Data.alias, 1, true)
    self:NotifyTo(actors.CyrusDaily2Data.alias, 1, true)
    self:NotifyTo(actors.JackDaily1Data.alias, 1, true)
    self:NotifyTo(actors.JackDaily2Data.alias, 1, true)
end

function Quest20063:OnSubFinish2006303(arg1)
    print("OnSubFinish2006303")
    self:SetQuestVar(arg1.QuestConfigId, 1, 1)
    self:NarratorOnlyTask(datas.FireSlimeFinishReminder)
end

function Quest20063:OnSubFailed2006303(arg1)
    print("OnSubFailed2006303")
end

function Quest20063:OnSubStart2006304(arg1)
    print("OnSubStart2006304")
    self:NotifyTo(actors.StanleyDaily1Data.alias, 1, true)
    self:NotifyTo(actors.StanleyDaily2Data.alias, 1, true)
    self:NotifyTo(actors.CyrusDaily1Data.alias, 1, true)
    self:NotifyTo(actors.CyrusDaily2Data.alias, 1, true)
    self:NotifyTo(actors.JackDaily1Data.alias, 1, true)
    self:NotifyTo(actors.JackDaily2Data.alias, 1, true)
end

function Quest20063:OnSubFinish2006304(arg1)
    print("OnSubFinish2006304")
    self:NarratorOnlyTask(datas.ShieldHiliReminder)
end

function Quest20063:OnSubFailed2006304(arg1)
    print("OnSubFailed2006304")
end

function Quest20063:OnSubStart2006305(arg1)
    print("OnSubStart2006305")
    self:NotifyTo(actors.StanleyDaily1Data.alias, 1, true)
    self:NotifyTo(actors.StanleyDaily2Data.alias, 1, true)
    self:NotifyTo(actors.CyrusDaily1Data.alias, 1, true)
    self:NotifyTo(actors.CyrusDaily2Data.alias, 1, true)
    self:NotifyTo(actors.JackDaily1Data.alias, 1, true)
    self:NotifyTo(actors.JackDaily2Data.alias, 1, true)
end

function Quest20063:OnSubFinish2006305(arg1)
    print("OnSubFinish2006305")
    self:SetQuestVar(arg1.QuestConfigId, 1, 2)
    self:NarratorOnlyTask(datas.ShieldHiliFinishReminder)
end

function Quest20063:OnSubFailed2006305(arg1)
    print("OnSubFailed2006305")
end

function Quest20063:OnSubStart2006306(arg1)
    print("OnSubStart2006306")
    self:NotifyTo(actors.StanleyDaily1Data.alias, 1, true)
    self:NotifyTo(actors.StanleyDaily2Data.alias, 1, true)
    self:NotifyTo(actors.CyrusDaily1Data.alias, 1, true)
    self:NotifyTo(actors.CyrusDaily2Data.alias, 1, true)
    self:NotifyTo(actors.JackDaily1Data.alias, 1, true)
    self:NotifyTo(actors.JackDaily2Data.alias, 1, true)
end

function Quest20063:OnSubFinish2006306(arg1)
    print("OnSubFinish2006306")
    self:NarratorOnlyTask(datas.IceSlimeReminder)
end

function Quest20063:OnSubFailed2006306(arg1)
    print("OnSubFailed2006306")
end

function Quest20063:OnSubStart2006307(arg1)
    print("OnSubStart2006307")
    self:NotifyTo(actors.StanleyDaily1Data.alias, 1, true)
    self:NotifyTo(actors.StanleyDaily2Data.alias, 1, true)
    self:NotifyTo(actors.CyrusDaily1Data.alias, 1, true)
    self:NotifyTo(actors.CyrusDaily2Data.alias, 1, true)
    self:NotifyTo(actors.JackDaily1Data.alias, 1, true)
    self:NotifyTo(actors.JackDaily2Data.alias, 1, true)
end

function Quest20063:OnSubFinish2006307(arg1)
    print("OnSubFinish2006307")
    self:SetQuestVar(arg1.QuestConfigId, 1, 1)
    self:NarratorOnlyTask(datas.IceSlimeFinishReminder)
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 1)
    print("2006307\229\133\168\229\177\128\229\143\152\233\135\143\228\184\186", questVar)
end

function Quest20063:OnSubFailed2006307(arg1)
    print("OnSubFailed2006307")
end

function Quest20063:OnSubStart2006308(arg1)
    print("OnSubStart2006308")
    self:NotifyTo(actors.StanleyDaily1Data.alias, 1, true)
    self:NotifyTo(actors.StanleyDaily2Data.alias, 1, true)
    self:NotifyTo(actors.CyrusDaily1Data.alias, 1, true)
    self:NotifyTo(actors.CyrusDaily2Data.alias, 1, true)
    self:NotifyTo(actors.JackDaily1Data.alias, 1, true)
    self:NotifyTo(actors.JackDaily2Data.alias, 1, true)
end

function Quest20063:OnSubFinish2006308(arg1)
    print("OnSubFinish2006308")
    self.ShowBlackScreen(self, 0.5, 1.5, 0.5, function()
        self:GetQuestNpcActor(actors.StanleyData.alias):Destroy(false)
        self:GetQuestNpcActor(actors.CyrusData.alias):Destroy(false)
        self:GetQuestNpcActor(actors.JackData.alias):Destroy(false)
        self:LightNotifyTo(actors.StanleyDaily1Data.alias, 0, true)
        self:LightNotifyTo(actors.StanleyDaily2Data.alias, 0, true)
        self:LightNotifyTo(actors.CyrusDaily1Data.alias, 0, true)
        self:LightNotifyTo(actors.CyrusDaily2Data.alias, 0, true)
        self:LightNotifyTo(actors.JackDaily1Data.alias, 0, true)
        self:LightNotifyTo(actors.JackDaily2Data.alias, 0, true)
    end)
end

function Quest20063:OnSubFailed2006308(arg1)
    print("OnSubFailed2006308")
end

function Quest20063:OnSubStart2006309(arg1)
    print("OnSubStart2006309")
    self:NotifyTo(actors.StanleyDaily1Data.alias, 1, true)
    self:NotifyTo(actors.StanleyDaily2Data.alias, 1, true)
    self:NotifyTo(actors.CyrusDaily1Data.alias, 1, true)
    self:NotifyTo(actors.CyrusDaily2Data.alias, 1, true)
    self:NotifyTo(actors.JackDaily1Data.alias, 1, true)
    self:NotifyTo(actors.JackDaily2Data.alias, 1, true)
end

function Quest20063:OnSubFinish2006309(arg1)
    print("OnSubFinish2006309")
    self:GetQuestNpcActor(actors.JackData.alias):WalkToTask(actors.JackData.leavepos, function(arg1, arg2)
        arg1:DestroyWithDither(false, 1)
    end)
end

function Quest20063:OnSubFailed2006309(arg1)
    print("OnSubFailed2006309")
end

function Quest20063:OnSubStart2006310(arg1)
    print("OnSubStart2006310")
    self:NotifyTo(actors.StanleyDaily1Data.alias, 1, true)
    self:NotifyTo(actors.StanleyDaily2Data.alias, 1, true)
    self:NotifyTo(actors.CyrusDaily1Data.alias, 1, true)
    self:NotifyTo(actors.CyrusDaily2Data.alias, 1, true)
    self:NotifyTo(actors.JackDaily1Data.alias, 1, true)
    self:NotifyTo(actors.JackDaily2Data.alias, 1, true)
end

function Quest20063:OnSubFinish2006310(arg1)
    print("OnSubFinish2006310")
    self.ShowBlackScreen(self, 0.5, 1.5, 0.5, function()
        self:GetQuestNpcActor(actors.StanleyData.alias):Destroy(false)
        self:GetQuestNpcActor(actors.CyrusData.alias):Destroy(false)
        self:GetQuestNpcActor(actors.JackData.alias):Destroy(false)
        self:LightNotifyTo(actors.StanleyDaily1Data.alias, 0, true)
        self:LightNotifyTo(actors.StanleyDaily2Data.alias, 0, true)
        self:LightNotifyTo(actors.CyrusDaily1Data.alias, 0, true)
        self:LightNotifyTo(actors.CyrusDaily2Data.alias, 0, true)
        self:LightNotifyTo(actors.JackDaily1Data.alias, 0, true)
        self:LightNotifyTo(actors.JackDaily2Data.alias, 0, true)
    end)
end

function Quest20063:OnSubFailed2006310(arg1)
    print("OnSubFailed2006310")
end

function Quest20063:OnMainCanceled(arg1)
    self:GetQuestNpcActor(actors.StanleyData.alias):Destroy(false)
    self:GetQuestNpcActor(actors.CyrusData.alias):Destroy(false)
    self:GetQuestNpcActor(actors.JackData.alias):Destroy(false)
    self:LightNotifyTo(actors.StanleyDaily1Data.alias, 0, true)
    self:LightNotifyTo(actors.StanleyDaily2Data.alias, 0, true)
    self:LightNotifyTo(actors.CyrusDaily1Data.alias, 0, true)
    self:LightNotifyTo(actors.CyrusDaily2Data.alias, 0, true)
    self:LightNotifyTo(actors.JackDaily1Data.alias, 0, true)
    self:LightNotifyTo(actors.JackDaily2Data.alias, 0, true)
end

return Quest20063
