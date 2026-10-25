require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7405340Trigger = class("Q7405340Trigger", GadgetActorProxy)
Q7405340Trigger.defaultAlias = "Q7405340Trigger"
local Q74053ClientConfig = require("Quest/Client/Q74053ClientConfig")

local this
local subIDs = Q74053ClientConfig.SubIDs
local npcs = Q74053ClientConfig.Npcs
local points = Q74053ClientConfig.Points
local datas = Q74053ClientConfig.Datas

function Q7405340Trigger:OnPostDataPrepare()
    print("[MainId: 74053][Trigger: Q7405340Trigger] OnPostDataPrepare")
    this = self
end

function Q7405340Trigger:OnPostComponentPrepare()
    print("[MainId: 74053][Trigger: Q7405340Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(20, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7405340Trigger:TriggerIn()
    print("[MainId: 74053][Trigger: Q7405340Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7405340)
    this:DestroySelf()
end

function Q7405340Trigger:PreTriggerIn()
    print("[MainId: 74053][Trigger: Q7405340Trigger] PreTriggerIn")
end

function Q7405340Trigger:LightUpTriggerIn()
    print("[MainId: 74053][Trigger: Q7405340Trigger] LightUpTriggerIn")
end

function Q7405340Trigger:TriggerOut()
    print("[MainId: 74053][Trigger: Q7405340Trigger] TriggerOut")
end

return Q7405340Trigger
