require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74011TriggerRUN2 = class("Q74011TriggerRUN2", GadgetActorProxy)
Q74011TriggerRUN2.defaultAlias = "Q74011TriggerRUN2"
local Q74011ClientConfig = require("Quest/Client/Q74011ClientConfig")

local this
local subIDs = Q74011ClientConfig.SubIDs
local npcs = Q74011ClientConfig.Npcs
local points = Q74011ClientConfig.Points
local datas = Q74011ClientConfig.Datas

function Q74011TriggerRUN2:OnPostDataPrepare()
    print("[MainId: 74011][Trigger: Q74011TriggerRUN2] OnPostDataPrepare")
    this = self
end

function Q74011TriggerRUN2:OnPostComponentPrepare()
    print("[MainId: 74011][Trigger: Q74011TriggerRUN2] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74011TriggerRUN2:TriggerIn()
    print("[MainId: 74011][Trigger: Q74011TriggerRUN2] TriggerIn")
    local actor = actorMgr:GetActor("74011")
    local questNpcActor = actor:GetQuestNpcActor(npcs.Npc5311Data.alias, 74011)
    actor:NpcWalkToRouteTaskEasy(questNpcActor, datas.RoutePointsData_01, function(arg1)
        local actor = actorMgr:GetActor("74011")
        actor:CallDelayByQuest("first", 1, function(arg1)
            actorMgr:GetActor("74011"):GetQuestNpcActor(npcs.Npc5311Data.alias, 74011):DestroyWithDither(false, 2)
        end)

        local questNpcActor = actor:GetQuestNpcActor(npcs.Npc5311Data.alias, 74011)
        actor:NpcWalkToTaskEasy(questNpcActor, {x = 2231.853, y = -364.231, z = 4908.184})
    end)

    actor:EnterSceneLookCamera({x = 2241.792, y = -366.952, z = 4894.829}, 0, 3, false, false)
    this:DestroySelf()
end

function Q74011TriggerRUN2:PreTriggerIn()
    print("[MainId: 74011][Trigger: Q74011TriggerRUN2] PreTriggerIn")
end

function Q74011TriggerRUN2:LightUpTriggerIn()
    print("[MainId: 74011][Trigger: Q74011TriggerRUN2] LightUpTriggerIn")
end

function Q74011TriggerRUN2:TriggerOut()
    print("[MainId: 74011][Trigger: Q74011TriggerRUN2] TriggerOut")
end

return Q74011TriggerRUN2
