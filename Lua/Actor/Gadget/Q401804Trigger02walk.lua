require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401804Trigger02walk = class("Q401804Trigger02walk", GadgetActorProxy)
Q401804Trigger02walk.defaultAlias = "Q401804Trigger02walk"
local Q4018ClientConfig = require("Quest/Client/Q4018ClientConfig")

local this
local subIDs = Q4018ClientConfig.SubIDs
local npcs = Q4018ClientConfig.Npcs
local points = Q4018ClientConfig.Points
local datas = Q4018ClientConfig.Datas

function Q401804Trigger02walk:OnPostDataPrepare()
    print("[MainId: 4018][Trigger: Q401804Trigger02walk] OnPostDataPrepare")
    this = self
end

function Q401804Trigger02walk:OnPostComponentPrepare()
    print("[MainId: 4018][Trigger: Q401804Trigger02walk] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(8, 14, 12, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401804Trigger02walk:TriggerIn()
    print("[MainId: 4018][Trigger: Q401804Trigger02walk] TriggerIn")
    local actor = actorMgr:GetActor("4018")
    actor:EnablePlayerInputByQuest(false)
    actor:EnterSceneLookCamera({x = 4490.492, y = 152.159, z = 4638.652}, 1, 2, false, false)
    actor:CallDelayByQuest("1", 2, function(arg1)
        actorMgr:GetActor("4018"):EnablePlayerInputByQuest(true)
    end)

    local questNpcActor = actor:GetQuestNpcActor(npcs.Npc13693Data.alias, 4018)
    actor:NpcWalkToTaskEasy(questNpcActor, {x = 4492.93, y = 152.858, z = 4638.983})
    this:DestroySelf()
end

function Q401804Trigger02walk:PreTriggerIn()
    print("[MainId: 4018][Trigger: Q401804Trigger02walk] PreTriggerIn")
end

function Q401804Trigger02walk:LightUpTriggerIn()
    print("[MainId: 4018][Trigger: Q401804Trigger02walk] LightUpTriggerIn")
end

function Q401804Trigger02walk:TriggerOut()
    print("[MainId: 4018][Trigger: Q401804Trigger02walk] TriggerOut")
end

return Q401804Trigger02walk
