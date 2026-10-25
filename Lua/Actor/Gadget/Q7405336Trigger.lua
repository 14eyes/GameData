require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7405336Trigger = class("Q7405336Trigger", GadgetActorProxy)
Q7405336Trigger.defaultAlias = "Q7405336Trigger"
local Q74053ClientConfig = require("Quest/Client/Q74053ClientConfig")

local this
local subIDs = Q74053ClientConfig.SubIDs
local npcs = Q74053ClientConfig.Npcs
local points = Q74053ClientConfig.Points
local datas = Q74053ClientConfig.Datas

function Q7405336Trigger:OnPostDataPrepare()
    print("[MainId: 74053][Trigger: Q7405336Trigger] OnPostDataPrepare")
    this = self
end

function Q7405336Trigger:OnPostComponentPrepare()
    print("[MainId: 74053][Trigger: Q7405336Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(9, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7405336Trigger:TriggerIn()
    print("[MainId: 74053][Trigger: Q7405336Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7405336)
    this:DestroySelf()
end

function Q7405336Trigger:PreTriggerIn()
    print("[MainId: 74053][Trigger: Q7405336Trigger] PreTriggerIn")
end

function Q7405336Trigger:LightUpTriggerIn()
    print("[MainId: 74053][Trigger: Q7405336Trigger] LightUpTriggerIn")
end

function Q7405336Trigger:TriggerOut()
    print("[MainId: 74053][Trigger: Q7405336Trigger] TriggerOut")
end

return Q7405336Trigger
