require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22003 = class("Quest22003", QuestActorProxy)
Quest22003.defaultAlias = "Quest22003"
local clientData
local mainID
local actorAlias
local subIDs
local actors
local datas

function Quest22003:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    actors = clientData.Actors
    datas = clientData.Datas
end

function Quest22003:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2200301"] = self.OnSubStart2200301,
        ["2200302"] = self.OnSubStart2200302,
        ["2200303"] = self.OnSubStart2200303,
        ["2200304"] = self.OnSubStart2200304,
        ["2200305"] = self.OnSubStart2200305
    }
end

function Quest22003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2200301"] = self.OnSubFinish2200301,
        ["2200302"] = self.OnSubFinish2200302,
        ["2200303"] = self.OnSubFinish2200303,
        ["2200304"] = self.OnSubFinish2200304,
        ["2200305"] = self.OnSubFinish2200305
    }
end

function Quest22003:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2200301"] = self.OnSubFailed2200301,
        ["2200302"] = self.OnSubFailed2200302,
        ["2200303"] = self.OnSubFailed2200303,
        ["2200304"] = self.OnSubFailed2200304,
        ["2200305"] = self.OnSubFailed2200305
    }
end

function Quest22003:Start()
    print("Start")
end

function Quest22003:OnDestroy()
    print("OnDestroy")
end

function Quest22003:OnSubStart2200301(arg1)
    print("OnSubStart2200301")
    self:NotifyTo(actors.YanXiaoDailyData.alias, 1, true)
    self:NotifyTo(actors.JiangXueDailyData.alias, 1, true)
    self:CreateQuestNpc(arg1, actors.YanXiaoData.id, 1)
    self:CreateQuestNpc(arg1, actors.JiangXueData.id, 2)
    self:GetQuestNpcActor(actors.YanXiaoData.alias):Standby()
    local questNpcActor = self:GetQuestNpcActor(actors.JiangXueData.alias)
    questNpcActor:Standby()
    questNpcActor:DoFreeStyle(4220)
end

function Quest22003:OnSubFinish2200301(arg1)
    print("OnSubFinish2200301")
end

function Quest22003:OnSubFailed2200301(arg1)
    print("OnSubFailed2200301")
end

function Quest22003:OnSubStart2200302(arg1)
    print("OnSubStart2200302")
    self:NotifyTo(actors.YanXiaoDailyData.alias, 1, true)
    self:NotifyTo(actors.JiangXueDailyData.alias, 1, true)
end

function Quest22003:OnSubFinish2200302(arg1)
    print("OnSubFinish2200302")
end

function Quest22003:OnSubFailed2200302(arg1)
    print("OnSubFailed2200302")
end

function Quest22003:OnSubStart2200303(arg1)
    print("OnSubStart2200303")
    self:RequestInteraction(actors.YanXiaoData.alias)
    self:NotifyTo(actors.YanXiaoDailyData.alias, 1, true)
    self:NotifyTo(actors.JiangXueDailyData.alias, 1, true)
end

function Quest22003:OnSubFinish2200303(arg1)
    print("OnSubFinish2200303")
end

function Quest22003:OnSubFailed2200303(arg1)
    print("OnSubFailed2200303")
end

function Quest22003:OnSubStart2200304(arg1)
    print("OnSubStart2200304")
    self:NotifyTo(actors.YanXiaoDailyData.alias, 1, true)
    self:NotifyTo(actors.JiangXueDailyData.alias, 1, true)
end

function Quest22003:OnSubFinish2200304(arg1)
    print("OnSubFinish2200304")
end

function Quest22003:OnSubFailed2200304(arg1)
    print("OnSubFailed2200304")
end

function Quest22003:OnSubStart2200305(arg1)
    print("OnSubStart2200305")
    self:NotifyTo(actors.YanXiaoDailyData.alias, 1, true)
    self:NotifyTo(actors.JiangXueDailyData.alias, 1, true)
end

function Quest22003:OnSubFinish2200305(arg1)
    print("OnSubFinish2200305")
    self.ShowBlackScreen(self, 0.5, 1.5, 0.5, function()
        self:GetQuestNpcActor(actors.YanXiaoData.alias):Destroy(false)
        self:GetQuestNpcActor(actors.JiangXueData.alias):Destroy(false)
        self:NotifyTo(actors.YanXiaoDailyData.alias, 0, true)
        self:NotifyTo(actors.JiangXueDailyData.alias, 0, true)
        print("DestroyNPC")
    end)
end

function Quest22003:OnSubFailed2200305(arg1)
    print("OnSubFailed2200305")
end

function Quest22003:OnMainCanceled(arg1)
    local questNpcActor = self:GetQuestNpcActor(actors.YanXiaoData.alias)
    local v = self:GetQuestNpcActor(actors.JiangXueData.alias)
    questNpcActor:Destroy(false)
    v:Destroy(false)
    self:NotifyTo(actors.YanXiaoDailyData.alias, 0, true)
    self:NotifyTo(actors.JiangXueDailyData.alias, 0, true)
end

return Quest22003
