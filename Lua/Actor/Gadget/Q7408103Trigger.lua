require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408103Trigger = class("Q7408103Trigger", GadgetActorProxy)
Q7408103Trigger.defaultAlias = "Q7408103Trigger"
local Q74081ClientConfig = require("Quest/Client/Q74081ClientConfig")

local this
local subIDs = Q74081ClientConfig.SubIDs
local npcs = Q74081ClientConfig.Npcs
local datas = Q74081ClientConfig.Datas

function Q7408103Trigger:OnPostDataPrepare()
    print("[MainId: 74081][Trigger: Q7408103Trigger] OnPostDataPrepare")
    this = self
end

function Q7408103Trigger:OnPostComponentPrepare()
    print("[MainId: 74081][Trigger: Q7408103Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(100, 50, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408103Trigger:TriggerIn()
    print("[MainId: 74081][Trigger: Q7408103Trigger] TriggerIn")
    this:DestroySelf()
end

function Q7408103Trigger:PreTriggerIn()
    print("[MainId: 74081][Trigger: Q7408103Trigger] PreTriggerIn")
end

function Q7408103Trigger:LightUpTriggerIn()
    print("[MainId: 74081][Trigger: Q7408103Trigger] LightUpTriggerIn")
end

function Q7408103Trigger:TriggerOut()
    print("[MainId: 74081][Trigger: Q7408103Trigger] TriggerOut")
end

return Q7408103Trigger
