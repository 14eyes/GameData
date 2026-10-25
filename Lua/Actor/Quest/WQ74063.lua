require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74063 = class("Quest74063", QuestActorProxy)
Quest74063.defaultAlias = "Quest74063"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74063:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74063:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7406301"] = self.OnSubStart7406301,
        ["7406307"] = self.OnSubStart7406307,
        ["7406302"] = self.OnSubStart7406302,
        ["7406303"] = self.OnSubStart7406303,
        ["7406304"] = self.OnSubStart7406304,
        ["7406306"] = self.OnSubStart7406306,
        ["7406305"] = self.OnSubStart7406305
    }
end

function Quest74063:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7406301"] = self.OnSubFinish7406301,
        ["7406307"] = self.OnSubFinish7406307,
        ["7406302"] = self.OnSubFinish7406302,
        ["7406303"] = self.OnSubFinish7406303,
        ["7406304"] = self.OnSubFinish7406304,
        ["7406306"] = self.OnSubFinish7406306,
        ["7406305"] = self.OnSubFinish7406305
    }
end

function Quest74063:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74063:Start()
    print("Start")
end

function Quest74063:OnDestroy()
    print("OnDestroy")
end

function Quest74063:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74063:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74063:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74063:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74063:OnSubStart7406301(arg1)
    print("OnSubStart7406301")
    this:CreateQuestNpc(arg1, npcs.Npc5236Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5219Data.id, 0)
    actorMgr:CreateActorWithPos("Q7406301Trigger", "Actor/Gadget/Q7406301Trigger", 70900002, 0, points.TPos_Q7406301Trigger.pos, points.TPos_Q7406301Trigger.rot, true, false, 3)
end

function Quest74063:OnSubFinish7406301(arg1)
    print("OnSubFinish7406301")
end

function Quest74063:OnSubStart7406307(arg1)
    print("OnSubStart7406307")
    actorMgr:GetActor("74063"):NarratorOnlyTaskByData(datas.queststart, function(arg1)
        actorUtils.FinishQuestID(false, 7406307)
    end, 74063)
end

function Quest74063:OnSubFinish7406307(arg1)
    print("OnSubFinish7406307")
    self:SetNavigationByMainId(74063, true)
end

function Quest74063:OnSubStart7406302(arg1)
    print("OnSubStart7406302")
    this:CreateQuestNpc(arg1, npcs.Npc5236Data.id, 0)
end

function Quest74063:OnSubFinish7406302(arg1)
    print("OnSubFinish7406302")
    this:NarratorOnlyTaskByData(datas.switchoff)
end

function Quest74063:OnSubStart7406303(arg1)
    print("OnSubStart7406303")
end

function Quest74063:OnSubFinish7406303(arg1)
    print("OnSubFinish7406303")
    this:NarratorOnlyTaskByData(datas.goreport)
end

function Quest74063:OnSubStart7406304(arg1)
    print("OnSubStart7406304")
    this:CreateQuestNpc(arg1, npcs.Npc5236Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5219Data.id, 0)
end

function Quest74063:OnSubFinish7406304(arg1)
    print("OnSubFinish7406304")
    this:NarratorOnlyTaskByData(datas.waitroute)
end

function Quest74063:OnSubStart7406306(arg1)
    print("OnSubStart7406306")
    this:CreateQuestNpc(arg1, npcs.Npc5236Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5236Data.alias, 74063)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData, 80, 60, -1, function(arg1)
        this:NarratorOnlyTaskByData(datas.routefinish, nil, 74063)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc5236Data.alias, 74063)
        this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData_01, 80, 60, -1, function(arg1)
            this:CallDelayByQuest("1", 1, function(arg1)
                this:GetQuestNpcActor(npcs.Npc5236Data.alias):SteerToAutonomyTask({x = -0.565, y = 0.0, z = 4.069}, 1, true, true)
                this:CallDelayByQuest("2", 1, function(arg1)
                    actorUtils.FinishQuestID(false, 7406306)
                end)
            end)
        end, nil, nil, nil, nil, nil, true)
    end, nil, nil, nil, nil, nil, true)

    this:GetQuestNpcActor(npcs.Npc5236Data.alias):DisableInteeHeadCtrl(true)
end

function Quest74063:OnSubFinish7406306(arg1)
    print("OnSubFinish7406306")
end

function Quest74063:OnSubStart7406305(arg1)
    print("OnSubStart7406305")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5236Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5219Data.id, 0)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest74063:OnSubFinish7406305(arg1)
    print("OnSubFinish7406305")
    self:SetNavigationByMainId(74025, true)
    this:GetQuestNpcActor(npcs.Npc5236Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc5236Data.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5219Data.alias)
end

return Quest74063
