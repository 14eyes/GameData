require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401219Trigger = class("Q401219Trigger", GadgetActorProxy)
Q401219Trigger.defaultAlias = "Q401219Trigger"
local Q4012ClientConfig = require("Quest/Client/Q4012ClientConfig")

local this
local subIDs = Q4012ClientConfig.SubIDs
local npcs = Q4012ClientConfig.Npcs
local points = Q4012ClientConfig.Points
local datas = Q4012ClientConfig.Datas

function Q401219Trigger:OnPostDataPrepare()
    print("[MainId: 4012][Trigger: Q401219Trigger] OnPostDataPrepare")
    this = self
end

function Q401219Trigger:OnPostComponentPrepare()
    print("[MainId: 4012][Trigger: Q401219Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(10, 4, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401219Trigger:TriggerIn()
    print("[MainId: 4012][Trigger: Q401219Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 401219)
    this:DestroySelf()
end

function Q401219Trigger:PreTriggerIn()
    print("[MainId: 4012][Trigger: Q401219Trigger] PreTriggerIn")
end

function Q401219Trigger:LightUpTriggerIn()
    print("[MainId: 4012][Trigger: Q401219Trigger] LightUpTriggerIn")
end

function Q401219Trigger:TriggerOut()
    print("[MainId: 4012][Trigger: Q401219Trigger] TriggerOut")
end

return Q401219Trigger
