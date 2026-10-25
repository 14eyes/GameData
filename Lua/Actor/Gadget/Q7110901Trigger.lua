require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110901Trigger = class("Q7110901Trigger", GadgetActorProxy)
Q7110901Trigger.defaultAlias = "Q7110901Trigger"
local Q71109ClientConfig = require("Quest/Client/Q71109ClientConfig")

local this
local subIDs = Q71109ClientConfig.SubIDs
local npcs = Q71109ClientConfig.Npcs
local points = Q71109ClientConfig.Points
local datas = Q71109ClientConfig.Datas

function Q7110901Trigger:OnPostDataPrepare()
    print("[MainId: 71109][Trigger: Q7110901Trigger] OnPostDataPrepare")
    this = self
end

function Q7110901Trigger:OnPostComponentPrepare()
    print("[MainId: 71109][Trigger: Q7110901Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(7.793081, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110901Trigger:TriggerIn()
    print("[MainId: 71109][Trigger: Q7110901Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110901)
    this:DestroySelf()
end

function Q7110901Trigger:PreTriggerIn()
    print("[MainId: 71109][Trigger: Q7110901Trigger] PreTriggerIn")
end

function Q7110901Trigger:LightUpTriggerIn()
    print("[MainId: 71109][Trigger: Q7110901Trigger] LightUpTriggerIn")
end

function Q7110901Trigger:TriggerOut()
    print("[MainId: 71109][Trigger: Q7110901Trigger] TriggerOut")
end

return Q7110901Trigger
