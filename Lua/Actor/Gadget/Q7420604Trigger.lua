require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7420604Trigger = class("Q7420604Trigger", GadgetActorProxy)
Q7420604Trigger.defaultAlias = "Q7420604Trigger"
local Q74206ClientConfig = require("Quest/Client/Q74206ClientConfig")

local this
local subIDs = Q74206ClientConfig.SubIDs
local npcs = Q74206ClientConfig.Npcs
local points = Q74206ClientConfig.Points
local datas = Q74206ClientConfig.Datas

function Q7420604Trigger:OnPostDataPrepare()
    print("[MainId: 74206][Trigger: Q7420604Trigger] OnPostDataPrepare")
    this = self
end

function Q7420604Trigger:OnPostComponentPrepare()
    print("[MainId: 74206][Trigger: Q7420604Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74206)
end

function Q7420604Trigger:TriggerIn()
    print("[MainId: 74206][Trigger: Q7420604Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7420604)
    this:DestroySelf()
end

function Q7420604Trigger:PreTriggerIn()
    print("[MainId: 74206][Trigger: Q7420604Trigger] PreTriggerIn")
end

function Q7420604Trigger:LightUpTriggerIn()
    print("[MainId: 74206][Trigger: Q7420604Trigger] LightUpTriggerIn")
end

function Q7420604Trigger:TriggerOut()
    print("[MainId: 74206][Trigger: Q7420604Trigger] TriggerOut")
end

return Q7420604Trigger
