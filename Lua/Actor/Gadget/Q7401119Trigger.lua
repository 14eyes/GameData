require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7401119Trigger = class("Q7401119Trigger", GadgetActorProxy)
Q7401119Trigger.defaultAlias = "Q7401119Trigger"
local Q74011ClientConfig = require("Quest/Client/Q74011ClientConfig")

local this
local subIDs = Q74011ClientConfig.SubIDs
local npcs = Q74011ClientConfig.Npcs
local points = Q74011ClientConfig.Points
local datas = Q74011ClientConfig.Datas

function Q7401119Trigger:OnPostDataPrepare()
    print("[MainId: 74011][Trigger: Q7401119Trigger] OnPostDataPrepare")
    this = self
end

function Q7401119Trigger:OnPostComponentPrepare()
    print("[MainId: 74011][Trigger: Q7401119Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7401119Trigger:TriggerIn()
    print("[MainId: 74011][Trigger: Q7401119Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7401119)
    this:DestroySelf()
end

function Q7401119Trigger:PreTriggerIn()
    print("[MainId: 74011][Trigger: Q7401119Trigger] PreTriggerIn")
end

function Q7401119Trigger:LightUpTriggerIn()
    print("[MainId: 74011][Trigger: Q7401119Trigger] LightUpTriggerIn")
end

function Q7401119Trigger:TriggerOut()
    print("[MainId: 74011][Trigger: Q7401119Trigger] TriggerOut")
end

return Q7401119Trigger
