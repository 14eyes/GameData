require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74155Trigger = class("Q74155Trigger", GadgetActorProxy)
Q74155Trigger.defaultAlias = "Q74155Trigger"
local Q74155ClientConfig = require("Quest/Client/Q74155ClientConfig")

local this
local subIDs = Q74155ClientConfig.SubIDs
local npcs = Q74155ClientConfig.Npcs
local datas = Q74155ClientConfig.Datas

function Q74155Trigger:OnPostDataPrepare()
    print("[MainId: 74155][Trigger: Q74155Trigger] OnPostDataPrepare")
    this = self
end

function Q74155Trigger:OnPostComponentPrepare()
    print("[MainId: 74155][Trigger: Q74155Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74155Trigger:TriggerIn()
    print("[MainId: 74155][Trigger: Q74155Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7415501)
    this:DestroySelf()
end

function Q74155Trigger:PreTriggerIn()
    print("[MainId: 74155][Trigger: Q74155Trigger] PreTriggerIn")
end

function Q74155Trigger:LightUpTriggerIn()
    print("[MainId: 74155][Trigger: Q74155Trigger] LightUpTriggerIn")
end

function Q74155Trigger:TriggerOut()
    print("[MainId: 74155][Trigger: Q74155Trigger] TriggerOut")
end

return Q74155Trigger
