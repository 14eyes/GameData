require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7405333Trigger = class("Q7405333Trigger", GadgetActorProxy)
Q7405333Trigger.defaultAlias = "Q7405333Trigger"
local Q74053ClientConfig = require("Quest/Client/Q74053ClientConfig")

local this
local subIDs = Q74053ClientConfig.SubIDs
local npcs = Q74053ClientConfig.Npcs
local points = Q74053ClientConfig.Points
local datas = Q74053ClientConfig.Datas

function Q7405333Trigger:OnPostDataPrepare()
    print("[MainId: 74053][Trigger: Q7405333Trigger] OnPostDataPrepare")
    this = self
end

function Q7405333Trigger:OnPostComponentPrepare()
    print("[MainId: 74053][Trigger: Q7405333Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(32, 14, true, {x = 0.0, y = 7.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7405333Trigger:TriggerIn()
    print("[MainId: 74053][Trigger: Q7405333Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7405333)
    this:DestroySelf()
end

function Q7405333Trigger:PreTriggerIn()
    print("[MainId: 74053][Trigger: Q7405333Trigger] PreTriggerIn")
end

function Q7405333Trigger:LightUpTriggerIn()
    print("[MainId: 74053][Trigger: Q7405333Trigger] LightUpTriggerIn")
end

function Q7405333Trigger:TriggerOut()
    print("[MainId: 74053][Trigger: Q7405333Trigger] TriggerOut")
end

return Q7405333Trigger
