require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402530Trigger = class("Q7402530Trigger", GadgetActorProxy)
Q7402530Trigger.defaultAlias = "Q7402530Trigger"
local Q74025ClientConfig = require("Quest/Client/Q74025ClientConfig")

local this
local subIDs = Q74025ClientConfig.SubIDs
local npcs = Q74025ClientConfig.Npcs
local points = Q74025ClientConfig.Points
local datas = Q74025ClientConfig.Datas

function Q7402530Trigger:OnPostDataPrepare()
    print("[MainId: 74025][Trigger: Q7402530Trigger] OnPostDataPrepare")
    this = self
end

function Q7402530Trigger:OnPostComponentPrepare()
    print("[MainId: 74025][Trigger: Q7402530Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402530Trigger:TriggerIn()
    print("[MainId: 74025][Trigger: Q7402530Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7402530)
    this:DestroySelf()
end

function Q7402530Trigger:PreTriggerIn()
    print("[MainId: 74025][Trigger: Q7402530Trigger] PreTriggerIn")
end

function Q7402530Trigger:LightUpTriggerIn()
    print("[MainId: 74025][Trigger: Q7402530Trigger] LightUpTriggerIn")
end

function Q7402530Trigger:TriggerOut()
    print("[MainId: 74025][Trigger: Q7402530Trigger] TriggerOut")
end

return Q7402530Trigger
