require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4013910Trigger = class("Q4013910Trigger", GadgetActorProxy)
Q4013910Trigger.defaultAlias = "Q4013910Trigger"
local Q40139ClientConfig = require("Quest/Client/Q40139ClientConfig")

local this
local subIDs = Q40139ClientConfig.SubIDs
local npcs = Q40139ClientConfig.Npcs
local points = Q40139ClientConfig.Points
local datas = Q40139ClientConfig.Datas

function Q4013910Trigger:OnPostDataPrepare()
    print("[MainId: 40139][Trigger: Q4013910Trigger] OnPostDataPrepare")
    this = self
end

function Q4013910Trigger:OnPostComponentPrepare()
    print("[MainId: 40139][Trigger: Q4013910Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40139)
end

function Q4013910Trigger:TriggerIn()
    print("[MainId: 40139][Trigger: Q4013910Trigger] TriggerIn")
end

function Q4013910Trigger:PreTriggerIn()
    print("[MainId: 40139][Trigger: Q4013910Trigger] PreTriggerIn")
end

function Q4013910Trigger:LightUpTriggerIn()
    print("[MainId: 40139][Trigger: Q4013910Trigger] LightUpTriggerIn")
end

function Q4013910Trigger:TriggerOut()
    print("[MainId: 40139][Trigger: Q4013910Trigger] TriggerOut")
    local actor = actorMgr:GetActor("40139")
    actor:DestroyQuestNpcActor(npcs.Npc13857Data.alias, 3)
    actor:DestroyQuestNpcActor(npcs.Npc13890Data.alias, 3)
    this:DestroySelf()
end

return Q4013910Trigger
