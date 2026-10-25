require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7404109Trigger = class("Q7404109Trigger", GadgetActorProxy)
Q7404109Trigger.defaultAlias = "Q7404109Trigger"
local Q74041ClientConfig = require("Quest/Client/Q74041ClientConfig")

local this
local subIDs = Q74041ClientConfig.SubIDs
local npcs = Q74041ClientConfig.Npcs
local points = Q74041ClientConfig.Points
local datas = Q74041ClientConfig.Datas

function Q7404109Trigger:OnPostDataPrepare()
    print("[MainId: 74041][Trigger: Q7404109Trigger] OnPostDataPrepare")
    this = self
end

function Q7404109Trigger:OnPostComponentPrepare()
    print("[MainId: 74041][Trigger: Q7404109Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(8, 3, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7404109Trigger:TriggerIn()
    print("[MainId: 74041][Trigger: Q7404109Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7404109)
    this:DestroySelf()
end

function Q7404109Trigger:PreTriggerIn()
    print("[MainId: 74041][Trigger: Q7404109Trigger] PreTriggerIn")
end

function Q7404109Trigger:LightUpTriggerIn()
    print("[MainId: 74041][Trigger: Q7404109Trigger] LightUpTriggerIn")
end

function Q7404109Trigger:TriggerOut()
    print("[MainId: 74041][Trigger: Q7404109Trigger] TriggerOut")
end

return Q7404109Trigger
