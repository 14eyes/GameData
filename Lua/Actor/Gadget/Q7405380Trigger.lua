require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7405380Trigger = class("Q7405380Trigger", GadgetActorProxy)
Q7405380Trigger.defaultAlias = "Q7405380Trigger"
local Q74053ClientConfig = require("Quest/Client/Q74053ClientConfig")

local this
local subIDs = Q74053ClientConfig.SubIDs
local npcs = Q74053ClientConfig.Npcs
local points = Q74053ClientConfig.Points
local datas = Q74053ClientConfig.Datas

function Q7405380Trigger:OnPostDataPrepare()
    print("[MainId: 74053][Trigger: Q7405380Trigger] OnPostDataPrepare")
    this = self
end

function Q7405380Trigger:OnPostComponentPrepare()
    print("[MainId: 74053][Trigger: Q7405380Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(25, 4, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7405380Trigger:TriggerIn()
    print("[MainId: 74053][Trigger: Q7405380Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7405380)
    this:DestroySelf()
end

function Q7405380Trigger:PreTriggerIn()
    print("[MainId: 74053][Trigger: Q7405380Trigger] PreTriggerIn")
end

function Q7405380Trigger:LightUpTriggerIn()
    print("[MainId: 74053][Trigger: Q7405380Trigger] LightUpTriggerIn")
end

function Q7405380Trigger:TriggerOut()
    print("[MainId: 74053][Trigger: Q7405380Trigger] TriggerOut")
end

return Q7405380Trigger
