require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401107Trigger = class("Q401107Trigger", GadgetActorProxy)
Q401107Trigger.defaultAlias = "Q401107Trigger"
local Q4011ClientConfig = require("Quest/Client/Q4011ClientConfig")

local this
local subIDs = Q4011ClientConfig.SubIDs
local npcs = Q4011ClientConfig.Npcs
local points = Q4011ClientConfig.Points
local datas = Q4011ClientConfig.Datas

function Q401107Trigger:OnPostDataPrepare()
    print("[MainId: 4011][Trigger: Q401107Trigger] OnPostDataPrepare")
    this = self
end

function Q401107Trigger:OnPostComponentPrepare()
    print("[MainId: 4011][Trigger: Q401107Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(10, 7, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401107Trigger:TriggerIn()
    print("[MainId: 4011][Trigger: Q401107Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 401107)
    this:DestroySelf()
end

function Q401107Trigger:PreTriggerIn()
    print("[MainId: 4011][Trigger: Q401107Trigger] PreTriggerIn")
end

function Q401107Trigger:LightUpTriggerIn()
    print("[MainId: 4011][Trigger: Q401107Trigger] LightUpTriggerIn")
end

function Q401107Trigger:TriggerOut()
    print("[MainId: 4011][Trigger: Q401107Trigger] TriggerOut")
end

return Q401107Trigger
