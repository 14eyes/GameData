require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401202Trigger = class("Q401202Trigger", GadgetActorProxy)
Q401202Trigger.defaultAlias = "Q401202Trigger"
local Q4012ClientConfig = require("Quest/Client/Q4012ClientConfig")

local this
local subIDs = Q4012ClientConfig.SubIDs
local npcs = Q4012ClientConfig.Npcs
local points = Q4012ClientConfig.Points
local datas = Q4012ClientConfig.Datas

function Q401202Trigger:OnPostDataPrepare()
    print("[MainId: 4012][Trigger: Q401202Trigger] OnPostDataPrepare")
    this = self
end

function Q401202Trigger:OnPostComponentPrepare()
    print("[MainId: 4012][Trigger: Q401202Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(10, 6, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401202Trigger:TriggerIn()
    print("[MainId: 4012][Trigger: Q401202Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 401202)
    this:DestroySelf()
end

function Q401202Trigger:PreTriggerIn()
    print("[MainId: 4012][Trigger: Q401202Trigger] PreTriggerIn")
end

function Q401202Trigger:LightUpTriggerIn()
    print("[MainId: 4012][Trigger: Q401202Trigger] LightUpTriggerIn")
end

function Q401202Trigger:TriggerOut()
    print("[MainId: 4012][Trigger: Q401202Trigger] TriggerOut")
end

return Q401202Trigger
