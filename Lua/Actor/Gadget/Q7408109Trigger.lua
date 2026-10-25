require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408109Trigger = class("Q7408109Trigger", GadgetActorProxy)
Q7408109Trigger.defaultAlias = "Q7408109Trigger"
local Q74081ClientConfig = require("Quest/Client/Q74081ClientConfig")

local this
local subIDs = Q74081ClientConfig.SubIDs
local npcs = Q74081ClientConfig.Npcs
local datas = Q74081ClientConfig.Datas

function Q7408109Trigger:OnPostDataPrepare()
    print("[MainId: 74081][Trigger: Q7408109Trigger] OnPostDataPrepare")
    this = self
end

function Q7408109Trigger:OnPostComponentPrepare()
    print("[MainId: 74081][Trigger: Q7408109Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10.21111, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408109Trigger:TriggerIn()
    print("[MainId: 74081][Trigger: Q7408109Trigger] TriggerIn")
    this:DestroySelf()
end

function Q7408109Trigger:PreTriggerIn()
    print("[MainId: 74081][Trigger: Q7408109Trigger] PreTriggerIn")
end

function Q7408109Trigger:LightUpTriggerIn()
    print("[MainId: 74081][Trigger: Q7408109Trigger] LightUpTriggerIn")
end

function Q7408109Trigger:TriggerOut()
    print("[MainId: 74081][Trigger: Q7408109Trigger] TriggerOut")
end

return Q7408109Trigger
