require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7405364Trigger = class("Q7405364Trigger", GadgetActorProxy)
Q7405364Trigger.defaultAlias = "Q7405364Trigger"
local Q74053ClientConfig = require("Quest/Client/Q74053ClientConfig")

local this
local subIDs = Q74053ClientConfig.SubIDs
local npcs = Q74053ClientConfig.Npcs
local points = Q74053ClientConfig.Points
local datas = Q74053ClientConfig.Datas

function Q7405364Trigger:OnPostDataPrepare()
    print("[MainId: 74053][Trigger: Q7405364Trigger] OnPostDataPrepare")
    this = self
end

function Q7405364Trigger:OnPostComponentPrepare()
    print("[MainId: 74053][Trigger: Q7405364Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7405364Trigger:TriggerIn()
    print("[MainId: 74053][Trigger: Q7405364Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7405364)
    this:DestroySelf()
end

function Q7405364Trigger:PreTriggerIn()
    print("[MainId: 74053][Trigger: Q7405364Trigger] PreTriggerIn")
end

function Q7405364Trigger:LightUpTriggerIn()
    print("[MainId: 74053][Trigger: Q7405364Trigger] LightUpTriggerIn")
end

function Q7405364Trigger:TriggerOut()
    print("[MainId: 74053][Trigger: Q7405364Trigger] TriggerOut")
end

return Q7405364Trigger
