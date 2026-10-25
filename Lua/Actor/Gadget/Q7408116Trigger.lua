require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408116Trigger = class("Q7408116Trigger", GadgetActorProxy)
Q7408116Trigger.defaultAlias = "Q7408116Trigger"
local Q74081ClientConfig = require("Quest/Client/Q74081ClientConfig")

local this
local subIDs = Q74081ClientConfig.SubIDs
local npcs = Q74081ClientConfig.Npcs
local datas = Q74081ClientConfig.Datas

function Q7408116Trigger:OnPostDataPrepare()
    print("[MainId: 74081][Trigger: Q7408116Trigger] OnPostDataPrepare")
    this = self
end

function Q7408116Trigger:OnPostComponentPrepare()
    print("[MainId: 74081][Trigger: Q7408116Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408116Trigger:TriggerIn()
    print("[MainId: 74081][Trigger: Q7408116Trigger] TriggerIn")
    this:DestroySelf()
end

function Q7408116Trigger:PreTriggerIn()
    print("[MainId: 74081][Trigger: Q7408116Trigger] PreTriggerIn")
end

function Q7408116Trigger:LightUpTriggerIn()
    print("[MainId: 74081][Trigger: Q7408116Trigger] LightUpTriggerIn")
end

function Q7408116Trigger:TriggerOut()
    print("[MainId: 74081][Trigger: Q7408116Trigger] TriggerOut")
end

return Q7408116Trigger
