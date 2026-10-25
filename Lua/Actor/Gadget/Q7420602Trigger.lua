require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7420602Trigger = class("Q7420602Trigger", GadgetActorProxy)
Q7420602Trigger.defaultAlias = "Q7420602Trigger"
local Q74206ClientConfig = require("Quest/Client/Q74206ClientConfig")

local this
local subIDs = Q74206ClientConfig.SubIDs
local npcs = Q74206ClientConfig.Npcs
local points = Q74206ClientConfig.Points
local datas = Q74206ClientConfig.Datas

function Q7420602Trigger:OnPostDataPrepare()
    print("[MainId: 74206][Trigger: Q7420602Trigger] OnPostDataPrepare")
    this = self
end

function Q7420602Trigger:OnPostComponentPrepare()
    print("[MainId: 74206][Trigger: Q7420602Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7420602Trigger:TriggerIn()
    print("[MainId: 74206][Trigger: Q7420602Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7420604)
    this:DestroySelf()
end

function Q7420602Trigger:PreTriggerIn()
    print("[MainId: 74206][Trigger: Q7420602Trigger] PreTriggerIn")
end

function Q7420602Trigger:LightUpTriggerIn()
    print("[MainId: 74206][Trigger: Q7420602Trigger] LightUpTriggerIn")
end

function Q7420602Trigger:TriggerOut()
    print("[MainId: 74206][Trigger: Q7420602Trigger] TriggerOut")
end

return Q7420602Trigger
