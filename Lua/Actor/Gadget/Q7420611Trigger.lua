require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7420611Trigger = class("Q7420611Trigger", GadgetActorProxy)
Q7420611Trigger.defaultAlias = "Q7420611Trigger"
local Q74206ClientConfig = require("Quest/Client/Q74206ClientConfig")

local this
local subIDs = Q74206ClientConfig.SubIDs
local npcs = Q74206ClientConfig.Npcs
local points = Q74206ClientConfig.Points
local datas = Q74206ClientConfig.Datas

function Q7420611Trigger:OnPostDataPrepare()
    print("[MainId: 74206][Trigger: Q7420611Trigger] OnPostDataPrepare")
    this = self
end

function Q7420611Trigger:OnPostComponentPrepare()
    print("[MainId: 74206][Trigger: Q7420611Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74206)
end

function Q7420611Trigger:TriggerIn()
    print("[MainId: 74206][Trigger: Q7420611Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7420611)
    this:DestroySelf()
end

function Q7420611Trigger:PreTriggerIn()
    print("[MainId: 74206][Trigger: Q7420611Trigger] PreTriggerIn")
end

function Q7420611Trigger:LightUpTriggerIn()
    print("[MainId: 74206][Trigger: Q7420611Trigger] LightUpTriggerIn")
end

function Q7420611Trigger:TriggerOut()
    print("[MainId: 74206][Trigger: Q7420611Trigger] TriggerOut")
end

return Q7420611Trigger
