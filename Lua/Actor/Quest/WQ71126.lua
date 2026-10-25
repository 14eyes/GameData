require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71126 = class("Quest71126", QuestActorProxy)
Quest71126.defaultAlias = "Quest71126"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest71126:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest71126:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7112601"] = self.OnSubStart7112601,
        ["7112602"] = self.OnSubStart7112602,
        ["7112603"] = self.OnSubStart7112603,
        ["7112604"] = self.OnSubStart7112604
    }
end

function Quest71126:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7112601"] = self.OnSubFinish7112601,
        ["7112602"] = self.OnSubFinish7112602,
        ["7112603"] = self.OnSubFinish7112603,
        ["7112604"] = self.OnSubFinish7112604
    }
end

function Quest71126:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71126:Start()
    print("Start")
end

function Quest71126:OnDestroy()
    print("OnDestroy")
end

function Quest71126:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71126:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71126:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71126:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest71126:OnSubStart7112601(arg1)
    print("OnSubStart7112601")
    this:CreateQuestNpc(arg1, npcs.Npc2500Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2500Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc2289Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2289Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc2513Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2513Data.alias, 1, true)
end

function Quest71126:OnSubFinish7112601(arg1)
    print("OnSubFinish7112601")
end

function Quest71126:OnSubStart7112602(arg1)
    print("OnSubStart7112602")
end

function Quest71126:OnSubFinish7112602(arg1)
    print("OnSubFinish7112602")
end

function Quest71126:OnSubStart7112603(arg1)
    print("OnSubStart7112603")
    this:CallDelayByQuest("", 1, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc2289Data.alias, 0)
        this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData, 999, 997, -1, function(arg1)
            actorUtils.FinishQuestID(false, 7112603)
        end, nil, nil, nil, nil, nil, false)
    end)
end

function Quest71126:OnSubFinish7112603(arg1)
    print("OnSubFinish7112603")
end

function Quest71126:OnSubStart7112604(arg1)
    print("OnSubStart7112604")
    actorMgr:CreateActorWithPos("Q7112604Trigger", "Actor/Gadget/Q7112604Trigger", 70900002, 0, points.TPos_Q7112604Trigger.pos, points.TPos_Q7112604Trigger.rot, true, false, 3)
end

function Quest71126:OnSubFinish7112604(arg1)
    print("OnSubFinish7112604")
    this:SafeDestroyQuestNpc(npcs.Npc2500Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2289Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2513Data.alias, 3)
    this:LightNotifyTo(npcs.Npc2500Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2289Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2513Data.alias, 0, true)
end

return Quest71126
