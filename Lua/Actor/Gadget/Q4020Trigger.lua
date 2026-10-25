require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4020Trigger = class("Q4020Trigger", GadgetActorProxy)
Q4020Trigger.defaultAlias = "Q4020Trigger"
local Q4020ClientConfig = require("Quest/Client/Q4020ClientConfig")

local this
local subIDs = Q4020ClientConfig.SubIDs
local npcs = Q4020ClientConfig.Npcs
local gadgets = Q4020ClientConfig.Gadgets
local points = Q4020ClientConfig.Points
local datas = Q4020ClientConfig.Datas

function Q4020Trigger:OnPostDataPrepare()
    print("[MainId: 4020][Trigger: Q4020Trigger] OnPostDataPrepare")
    this = self
end

function Q4020Trigger:OnPostComponentPrepare()
    print("[MainId: 4020][Trigger: Q4020Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4020Trigger:TriggerIn()
    print("[MainId: 4020][Trigger: Q4020Trigger] TriggerIn")
    this:DestroySelf()
    actorUtils.FinishQuestID(false, 402001)
end

function Q4020Trigger:PreTriggerIn()
    print("[MainId: 4020][Trigger: Q4020Trigger] PreTriggerIn")
end

function Q4020Trigger:LightUpTriggerIn()
    print("[MainId: 4020][Trigger: Q4020Trigger] LightUpTriggerIn")
end

function Q4020Trigger:TriggerOut()
    print("[MainId: 4020][Trigger: Q4020Trigger] TriggerOut")
end

return Q4020Trigger
