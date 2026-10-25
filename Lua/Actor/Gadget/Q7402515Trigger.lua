require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402515Trigger = class("Q7402515Trigger", GadgetActorProxy)
Q7402515Trigger.defaultAlias = "Q7402515Trigger"
local Q74025ClientConfig = require("Quest/Client/Q74025ClientConfig")

local this
local subIDs = Q74025ClientConfig.SubIDs
local npcs = Q74025ClientConfig.Npcs
local points = Q74025ClientConfig.Points
local datas = Q74025ClientConfig.Datas

function Q7402515Trigger:OnPostDataPrepare()
    print("[MainId: 74025][Trigger: Q7402515Trigger] OnPostDataPrepare")
    this = self
end

function Q7402515Trigger:OnPostComponentPrepare()
    print("[MainId: 74025][Trigger: Q7402515Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402515Trigger:TriggerIn()
    print("[MainId: 74025][Trigger: Q7402515Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7402515)
    this:DestroySelf()
end

function Q7402515Trigger:PreTriggerIn()
    print("[MainId: 74025][Trigger: Q7402515Trigger] PreTriggerIn")
end

function Q7402515Trigger:LightUpTriggerIn()
    print("[MainId: 74025][Trigger: Q7402515Trigger] LightUpTriggerIn")
end

function Q7402515Trigger:TriggerOut()
    print("[MainId: 74025][Trigger: Q7402515Trigger] TriggerOut")
end

return Q7402515Trigger
