require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74011TriggerRUN1 = class("Q74011TriggerRUN1", GadgetActorProxy)
Q74011TriggerRUN1.defaultAlias = "Q74011TriggerRUN1"
local Q74011ClientConfig = require("Quest/Client/Q74011ClientConfig")

local this
local subIDs = Q74011ClientConfig.SubIDs
local npcs = Q74011ClientConfig.Npcs
local points = Q74011ClientConfig.Points
local datas = Q74011ClientConfig.Datas

function Q74011TriggerRUN1:OnPostDataPrepare()
    print("[MainId: 74011][Trigger: Q74011TriggerRUN1] OnPostDataPrepare")
    this = self
end

function Q74011TriggerRUN1:OnPostComponentPrepare()
    print("[MainId: 74011][Trigger: Q74011TriggerRUN1] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74011TriggerRUN1:TriggerIn()
    print("[MainId: 74011][Trigger: Q74011TriggerRUN1] TriggerIn")
    local actor = actorMgr:GetActor("74011")
    local questNpcActor = actor:GetQuestNpcActor(npcs.Npc5311Data.alias, 74011)
    actor:NpcWalkToRouteTaskEasy(questNpcActor, datas.RoutePointsData, function(arg1)
        local actor = actorMgr:GetActor("74011")
        actor:CallDelayByQuest("first", 1, function(arg1)
            actorMgr:GetActor("74011"):GetQuestNpcActor(npcs.Npc5311Data.alias, 74011):DestroyWithDither(false, 2)
        end)

        local questNpcActor = actor:GetQuestNpcActor(npcs.Npc5311Data.alias, 74011)
        actor:NpcWalkToTaskEasy(questNpcActor, {x = 2247.0, y = -383.0, z = 4805.0})
    end)

    this:DestroySelf()
end

function Q74011TriggerRUN1:PreTriggerIn()
    print("[MainId: 74011][Trigger: Q74011TriggerRUN1] PreTriggerIn")
end

function Q74011TriggerRUN1:LightUpTriggerIn()
    print("[MainId: 74011][Trigger: Q74011TriggerRUN1] LightUpTriggerIn")
end

function Q74011TriggerRUN1:TriggerOut()
    print("[MainId: 74011][Trigger: Q74011TriggerRUN1] TriggerOut")
end

return Q74011TriggerRUN1
