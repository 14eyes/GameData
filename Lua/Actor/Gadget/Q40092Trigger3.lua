require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40092Trigger3 = class("Q40092Trigger3", GadgetActorProxy)
Q40092Trigger3.defaultAlias = "Q40092Trigger3"
local Q40092ClientConfig = require("Quest/Client/Q40092ClientConfig")

local this
local subIDs = Q40092ClientConfig.SubIDs
local npcs = Q40092ClientConfig.Npcs
local gadgets = Q40092ClientConfig.Gadgets
local datas = Q40092ClientConfig.Datas

function Q40092Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q40092Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q40092Trigger3:TriggerIn()
    print("TriggerIn")
    this:DestroySelf()
    local actor = actorMgr:GetActor("40092")
    actor:CreateQuestNpcById(4009202, npcs.Npc1066Data.id, 1)
    local questNpcActor = actor:GetQuestNpcActor(npcs.Npc1066Data.alias, 40092)
    print("_ret_getquestnpcactor")
    print(questNpcActor)
    actor:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData4, 40, 40, -1, function(arg1)
        local actor = actorMgr:GetActor("40092")
        actor:GetQuestNpcActor(npcs.Npc1066Data.alias, 40092)
        actor:GetQuestNpcActor(npcs.Npc1066Data.alias, 40092):DoFreeStyle(1280, true, nil, true, true, false, false)
        local v = actorMgr:GetActor("40092")
        actorMgr:CreateActorWithPos("Q40092Trigger4", "Actor/Gadget/Q40092Trigger4", 70900002, 1, sceneData:GetDummyPoint(3, "Q4009202_route2").pos, sceneData:GetDummyPoint(3, "Q4009202_route2").rot, true, false)
        print(_triggerin)
    end, nil, nil, nil, nil, nil, false)
end

function Q40092Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q40092Trigger3
