require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7405330Trigger = class("Q7405330Trigger", GadgetActorProxy)
Q7405330Trigger.defaultAlias = "Q7405330Trigger"
local Q74053ClientConfig = require("Quest/Client/Q74053ClientConfig")

local this
local subIDs = Q74053ClientConfig.SubIDs
local npcs = Q74053ClientConfig.Npcs
local points = Q74053ClientConfig.Points
local datas = Q74053ClientConfig.Datas

function Q7405330Trigger:OnPostDataPrepare()
    print("[MainId: 74053][Trigger: Q7405330Trigger] OnPostDataPrepare")
    this = self
end

function Q7405330Trigger:OnPostComponentPrepare()
    print("[MainId: 74053][Trigger: Q7405330Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7405330Trigger:TriggerIn()
    print("[MainId: 74053][Trigger: Q7405330Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7405330)
    this:DestroySelf()
end

function Q7405330Trigger:PreTriggerIn()
    print("[MainId: 74053][Trigger: Q7405330Trigger] PreTriggerIn")
end

function Q7405330Trigger:LightUpTriggerIn()
    print("[MainId: 74053][Trigger: Q7405330Trigger] LightUpTriggerIn")
end

function Q7405330Trigger:TriggerOut()
    print("[MainId: 74053][Trigger: Q7405330Trigger] TriggerOut")
end

return Q7405330Trigger
