require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402520Trigger = class("Q7402520Trigger", GadgetActorProxy)
Q7402520Trigger.defaultAlias = "Q7402520Trigger"
local Q74025ClientConfig = require("Quest/Client/Q74025ClientConfig")

local this
local subIDs = Q74025ClientConfig.SubIDs
local npcs = Q74025ClientConfig.Npcs
local points = Q74025ClientConfig.Points
local datas = Q74025ClientConfig.Datas

function Q7402520Trigger:OnPostDataPrepare()
    print("[MainId: 74025][Trigger: Q7402520Trigger] OnPostDataPrepare")
    this = self
end

function Q7402520Trigger:OnPostComponentPrepare()
    print("[MainId: 74025][Trigger: Q7402520Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402520Trigger:TriggerIn()
    print("[MainId: 74025][Trigger: Q7402520Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7402520)
    this:DestroySelf()
end

function Q7402520Trigger:PreTriggerIn()
    print("[MainId: 74025][Trigger: Q7402520Trigger] PreTriggerIn")
end

function Q7402520Trigger:LightUpTriggerIn()
    print("[MainId: 74025][Trigger: Q7402520Trigger] LightUpTriggerIn")
end

function Q7402520Trigger:TriggerOut()
    print("[MainId: 74025][Trigger: Q7402520Trigger] TriggerOut")
end

return Q7402520Trigger
