require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7420601Trigger = class("Q7420601Trigger", GadgetActorProxy)
Q7420601Trigger.defaultAlias = "Q7420601Trigger"
local Q74206ClientConfig = require("Quest/Client/Q74206ClientConfig")

local this
local subIDs = Q74206ClientConfig.SubIDs
local npcs = Q74206ClientConfig.Npcs
local points = Q74206ClientConfig.Points
local datas = Q74206ClientConfig.Datas

function Q7420601Trigger:OnPostDataPrepare()
    print("[MainId: 74206][Trigger: Q7420601Trigger] OnPostDataPrepare")
    this = self
end

function Q7420601Trigger:OnPostComponentPrepare()
    print("[MainId: 74206][Trigger: Q7420601Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7420601Trigger:TriggerIn()
    print("[MainId: 74206][Trigger: Q7420601Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7420601)
    this:DestroySelf()
end

function Q7420601Trigger:PreTriggerIn()
    print("[MainId: 74206][Trigger: Q7420601Trigger] PreTriggerIn")
end

function Q7420601Trigger:LightUpTriggerIn()
    print("[MainId: 74206][Trigger: Q7420601Trigger] LightUpTriggerIn")
end

function Q7420601Trigger:TriggerOut()
    print("[MainId: 74206][Trigger: Q7420601Trigger] TriggerOut")
end

return Q7420601Trigger
