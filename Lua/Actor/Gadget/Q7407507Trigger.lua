require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7407507Trigger = class("Q7407507Trigger", GadgetActorProxy)
Q7407507Trigger.defaultAlias = "Q7407507Trigger"
local Q74075ClientConfig = require("Quest/Client/Q74075ClientConfig")

local this
local subIDs = Q74075ClientConfig.SubIDs
local npcs = Q74075ClientConfig.Npcs
local points = Q74075ClientConfig.Points
local datas = Q74075ClientConfig.Datas

function Q7407507Trigger:OnPostDataPrepare()
    print("[MainId: 74075][Trigger: Q7407507Trigger] OnPostDataPrepare")
    this = self
end

function Q7407507Trigger:OnPostComponentPrepare()
    print("[MainId: 74075][Trigger: Q7407507Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(50, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7407507Trigger:TriggerIn()
    print("[MainId: 74075][Trigger: Q7407507Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7407507)
    this:DestroySelf()
end

function Q7407507Trigger:PreTriggerIn()
    print("[MainId: 74075][Trigger: Q7407507Trigger] PreTriggerIn")
end

function Q7407507Trigger:LightUpTriggerIn()
    print("[MainId: 74075][Trigger: Q7407507Trigger] LightUpTriggerIn")
end

function Q7407507Trigger:TriggerOut()
    print("[MainId: 74075][Trigger: Q7407507Trigger] TriggerOut")
end

return Q7407507Trigger
