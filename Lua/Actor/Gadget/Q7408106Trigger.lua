require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408106Trigger = class("Q7408106Trigger", GadgetActorProxy)
Q7408106Trigger.defaultAlias = "Q7408106Trigger"
local Q74081ClientConfig = require("Quest/Client/Q74081ClientConfig")

local this
local subIDs = Q74081ClientConfig.SubIDs
local npcs = Q74081ClientConfig.Npcs
local datas = Q74081ClientConfig.Datas

function Q7408106Trigger:OnPostDataPrepare()
    print("[MainId: 74081][Trigger: Q7408106Trigger] OnPostDataPrepare")
    this = self
end

function Q7408106Trigger:OnPostComponentPrepare()
    print("[MainId: 74081][Trigger: Q7408106Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(9.046787, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408106Trigger:TriggerIn()
    print("[MainId: 74081][Trigger: Q7408106Trigger] TriggerIn")
    this:DestroySelf()
end

function Q7408106Trigger:PreTriggerIn()
    print("[MainId: 74081][Trigger: Q7408106Trigger] PreTriggerIn")
end

function Q7408106Trigger:LightUpTriggerIn()
    print("[MainId: 74081][Trigger: Q7408106Trigger] LightUpTriggerIn")
end

function Q7408106Trigger:TriggerOut()
    print("[MainId: 74081][Trigger: Q7408106Trigger] TriggerOut")
end

return Q7408106Trigger
