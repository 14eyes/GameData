require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73226 = class("Quest73226", QuestActorProxy)
Quest73226.defaultAlias = "Quest73226"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73226:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73226:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7322601"] = self.OnSubStart7322601,
        ["7322603"] = self.OnSubStart7322603,
        ["7322602"] = self.OnSubStart7322602,
        ["7322604"] = self.OnSubStart7322604,
        ["7322606"] = self.OnSubStart7322606,
        ["7322605"] = self.OnSubStart7322605,
        ["7322607"] = self.OnSubStart7322607,
        ["7322609"] = self.OnSubStart7322609,
        ["7322608"] = self.OnSubStart7322608,
        ["7322610"] = self.OnSubStart7322610,
        ["7322612"] = self.OnSubStart7322612,
        ["7322611"] = self.OnSubStart7322611,
        ["7322613"] = self.OnSubStart7322613,
        ["7322615"] = self.OnSubStart7322615,
        ["7322614"] = self.OnSubStart7322614,
        ["7322616"] = self.OnSubStart7322616
    }
end

function Quest73226:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7322601"] = self.OnSubFinish7322601,
        ["7322603"] = self.OnSubFinish7322603,
        ["7322602"] = self.OnSubFinish7322602,
        ["7322604"] = self.OnSubFinish7322604,
        ["7322606"] = self.OnSubFinish7322606,
        ["7322605"] = self.OnSubFinish7322605,
        ["7322607"] = self.OnSubFinish7322607,
        ["7322609"] = self.OnSubFinish7322609,
        ["7322608"] = self.OnSubFinish7322608,
        ["7322610"] = self.OnSubFinish7322610,
        ["7322612"] = self.OnSubFinish7322612,
        ["7322611"] = self.OnSubFinish7322611,
        ["7322613"] = self.OnSubFinish7322613,
        ["7322615"] = self.OnSubFinish7322615,
        ["7322614"] = self.OnSubFinish7322614,
        ["7322616"] = self.OnSubFinish7322616
    }
end

function Quest73226:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73226:Start()
    print("Start")
end

function Quest73226:OnDestroy()
    print("OnDestroy")
end

function Quest73226:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73226:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73226:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73226:OnSubStart7322601(arg1)
    print("OnSubStart7322601")
end

function Quest73226:OnSubFinish7322601(arg1)
    print("OnSubFinish7322601")
    self:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest73226:OnSubStart7322603(arg1)
    print("OnSubStart7322603")
    self:CreateQuestNpc(arg1, npcs.Npc20861Data.id, 1)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc20861Data.alias, 73226)
        arg1:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData, 10, 5, -1, function(arg1)
            arg1:SyncPos(2)
            if arg1.BeFollowState == BeFollowState.FAILED then
                return
            end

            arg1:ClearSteerToAutonomyTask()
            arg1:Standby()
            actorUtils.FinishQuestID(false, 7322603)
        end, nil, nil, function(arg1)
            arg1:TryPauseCurAutoNarrator()
            arg1:Standby()
            arg1:DisableInteeHeadCtrl(false)
        end, function(arg1)
            arg1:ClearSteerToAutonomyTask()
            arg1:DisableInteeHeadCtrl(true)
            arg1:ResumeMove()
        end, nil, false)
    end)
end

function Quest73226:OnSubFinish7322603(arg1)
    print("OnSubFinish7322603")
    self:SafeDestroyQuestNpc(npcs.Npc20861Data.alias, 3)
end

function Quest73226:OnSubStart7322602(arg1)
    print("OnSubStart7322602")
end

function Quest73226:OnSubFinish7322602(arg1)
    print("OnSubFinish7322602")
end

function Quest73226:OnSubStart7322604(arg1)
    print("OnSubStart7322604")
end

function Quest73226:OnSubFinish7322604(arg1)
    print("OnSubFinish7322604")
    self:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest73226:OnSubStart7322606(arg1)
    print("OnSubStart7322606")
    self:CreateQuestNpc(arg1, npcs.Npc20888Data.id, 1)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc20888Data.alias, 73226)
        arg1:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData2, 10, 5, -1, function(arg1)
            arg1:SyncPos(2)
            if arg1.BeFollowState == BeFollowState.FAILED then
                return
            end

            arg1:ClearSteerToAutonomyTask()
            arg1:Standby()
            actorUtils.FinishQuestID(false, 7322606)
        end, nil, nil, function(arg1)
            arg1:TryPauseCurAutoNarrator()
            arg1:Standby()
            arg1:DisableInteeHeadCtrl(false)
        end, function(arg1)
            arg1:ClearSteerToAutonomyTask()
            arg1:DisableInteeHeadCtrl(true)
            arg1:ResumeMove()
        end, nil, false)
    end)
end

function Quest73226:OnSubFinish7322606(arg1)
    print("OnSubFinish7322606")
    self:SafeDestroyQuestNpc(npcs.Npc20888Data.alias, 3)
end

function Quest73226:OnSubStart7322605(arg1)
    print("OnSubStart7322605")
end

function Quest73226:OnSubFinish7322605(arg1)
    print("OnSubFinish7322605")
end

function Quest73226:OnSubStart7322607(arg1)
    print("OnSubStart7322607")
end

function Quest73226:OnSubFinish7322607(arg1)
    print("OnSubFinish7322607")
    self:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest73226:OnSubStart7322609(arg1)
    print("OnSubStart7322609")
    self:CreateQuestNpc(arg1, npcs.Npc20889Data.id, 1)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc20889Data.alias, 73226)
        arg1:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData3, 10, 5, -1, function(arg1)
            arg1:SyncPos(2)
            if arg1.BeFollowState == BeFollowState.FAILED then
                return
            end

            arg1:ClearSteerToAutonomyTask()
            arg1:Standby()
            actorUtils.FinishQuestID(false, 7322609)
        end, nil, nil, function(arg1)
            arg1:TryPauseCurAutoNarrator()
            arg1:Standby()
            arg1:DisableInteeHeadCtrl(false)
        end, function(arg1)
            arg1:ClearSteerToAutonomyTask()
            arg1:DisableInteeHeadCtrl(true)
            arg1:ResumeMove()
        end, nil, false)
    end)
end

function Quest73226:OnSubFinish7322609(arg1)
    print("OnSubFinish7322609")
    self:SafeDestroyQuestNpc(npcs.Npc20889Data.alias, 3)
end

function Quest73226:OnSubStart7322608(arg1)
    print("OnSubStart7322608")
end

function Quest73226:OnSubFinish7322608(arg1)
    print("OnSubFinish7322608")
end

function Quest73226:OnSubStart7322610(arg1)
    print("OnSubStart7322610")
end

function Quest73226:OnSubFinish7322610(arg1)
    print("OnSubFinish7322610")
    self:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest73226:OnSubStart7322612(arg1)
    print("OnSubStart7322612")
    self:CreateQuestNpc(arg1, npcs.Npc20890Data.id, 1)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc20890Data.alias, 73226)
        arg1:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData4, 10, 5, -1, function(arg1)
            arg1:SyncPos(2)
            if arg1.BeFollowState == BeFollowState.FAILED then
                return
            end

            arg1:ClearSteerToAutonomyTask()
            arg1:Standby()
            actorUtils.FinishQuestID(false, 7322612)
        end, nil, nil, function(arg1)
            arg1:TryPauseCurAutoNarrator()
            arg1:Standby()
            arg1:DisableInteeHeadCtrl(false)
        end, function(arg1)
            arg1:ClearSteerToAutonomyTask()
            arg1:DisableInteeHeadCtrl(true)
            arg1:ResumeMove()
        end, nil, false)
    end)
end

function Quest73226:OnSubFinish7322612(arg1)
    print("OnSubFinish7322612")
    self:SafeDestroyQuestNpc(npcs.Npc20890Data.alias, 3)
end

function Quest73226:OnSubStart7322611(arg1)
    print("OnSubStart7322611")
end

function Quest73226:OnSubFinish7322611(arg1)
    print("OnSubFinish7322611")
end

function Quest73226:OnSubStart7322613(arg1)
    print("OnSubStart7322613")
end

function Quest73226:OnSubFinish7322613(arg1)
    print("OnSubFinish7322613")
    self:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest73226:OnSubStart7322615(arg1)
    print("OnSubStart7322615")
    self:CreateQuestNpc(arg1, npcs.Npc20891Data.id, 1)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc20891Data.alias, 73226)
        arg1:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData5, 10, 5, -1, function(arg1)
            arg1:SyncPos(2)
            if arg1.BeFollowState == BeFollowState.FAILED then
                return
            end

            arg1:ClearSteerToAutonomyTask()
            arg1:Standby()
            actorUtils.FinishQuestID(false, 7322615)
        end, nil, nil, function(arg1)
            arg1:TryPauseCurAutoNarrator()
            arg1:Standby()
            arg1:DisableInteeHeadCtrl(false)
        end, function(arg1)
            arg1:ClearSteerToAutonomyTask()
            arg1:DisableInteeHeadCtrl(true)
            arg1:ResumeMove()
        end, nil, false)
    end)
end

function Quest73226:OnSubFinish7322615(arg1)
    print("OnSubFinish7322615")
    self:SafeDestroyQuestNpc(npcs.Npc20891Data.alias, 3)
end

function Quest73226:OnSubStart7322614(arg1)
    print("OnSubStart7322614")
end

function Quest73226:OnSubFinish7322614(arg1)
    print("OnSubFinish7322614")
end

function Quest73226:OnSubStart7322616(arg1)
    print("OnSubStart7322616")
end

function Quest73226:OnSubFinish7322616(arg1)
    print("OnSubFinish7322616")
end

return Quest73226
