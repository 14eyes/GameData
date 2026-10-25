require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7405381Trigger = class("Q7405381Trigger", GadgetActorProxy)
Q7405381Trigger.defaultAlias = "Q7405381Trigger"
local Q74053ClientConfig = require("Quest/Client/Q74053ClientConfig")

local this
local subIDs = Q74053ClientConfig.SubIDs
local npcs = Q74053ClientConfig.Npcs
local points = Q74053ClientConfig.Points
local datas = Q74053ClientConfig.Datas

function Q7405381Trigger:OnPostDataPrepare()
    print("[MainId: 74053][Trigger: Q7405381Trigger] OnPostDataPrepare")
    this = self
end

function Q7405381Trigger:OnPostComponentPrepare()
    print("[MainId: 74053][Trigger: Q7405381Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7405381Trigger:TriggerIn()
    print("[MainId: 74053][Trigger: Q7405381Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7405381)
    this:DestroySelf()
end

function Q7405381Trigger:PreTriggerIn()
    print("[MainId: 74053][Trigger: Q7405381Trigger] PreTriggerIn")
end

function Q7405381Trigger:LightUpTriggerIn()
    print("[MainId: 74053][Trigger: Q7405381Trigger] LightUpTriggerIn")
end

function Q7405381Trigger:TriggerOut()
    print("[MainId: 74053][Trigger: Q7405381Trigger] TriggerOut")
end

return Q7405381Trigger
