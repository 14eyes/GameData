require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402508Trigger = class("Q7402508Trigger", GadgetActorProxy)
Q7402508Trigger.defaultAlias = "Q7402508Trigger"
local Q74025ClientConfig = require("Quest/Client/Q74025ClientConfig")

local this
local subIDs = Q74025ClientConfig.SubIDs
local npcs = Q74025ClientConfig.Npcs
local points = Q74025ClientConfig.Points
local datas = Q74025ClientConfig.Datas

function Q7402508Trigger:OnPostDataPrepare()
    print("[MainId: 74025][Trigger: Q7402508Trigger] OnPostDataPrepare")
    this = self
end

function Q7402508Trigger:OnPostComponentPrepare()
    print("[MainId: 74025][Trigger: Q7402508Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402508Trigger:TriggerIn()
    print("[MainId: 74025][Trigger: Q7402508Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7402508)
    this:DestroySelf()
end

function Q7402508Trigger:PreTriggerIn()
    print("[MainId: 74025][Trigger: Q7402508Trigger] PreTriggerIn")
end

function Q7402508Trigger:LightUpTriggerIn()
    print("[MainId: 74025][Trigger: Q7402508Trigger] LightUpTriggerIn")
end

function Q7402508Trigger:TriggerOut()
    print("[MainId: 74025][Trigger: Q7402508Trigger] TriggerOut")
end

return Q7402508Trigger
