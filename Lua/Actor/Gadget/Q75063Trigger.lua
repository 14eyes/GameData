require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75063Trigger = class("Q75063Trigger", GadgetActorProxy)
Q75063Trigger.defaultAlias = "Q75063Trigger"
local Q75063ClientConfig = require("Quest/Client/Q75063ClientConfig")

local this
local subIDs = Q75063ClientConfig.SubIDs
local points = Q75063ClientConfig.Points
local datas = Q75063ClientConfig.Datas

function Q75063Trigger:OnPostDataPrepare()
    print("[MainId: 75063][Trigger: Q75063Trigger] OnPostDataPrepare")
    this = self
end

function Q75063Trigger:OnPostComponentPrepare()
    print("[MainId: 75063][Trigger: Q75063Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(100, 30, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75063)
end

function Q75063Trigger:TriggerIn()
    print("[MainId: 75063][Trigger: Q75063Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7506302)
    this:DestroySelf()
end

function Q75063Trigger:PreTriggerIn()
    print("[MainId: 75063][Trigger: Q75063Trigger] PreTriggerIn")
end

function Q75063Trigger:LightUpTriggerIn()
    print("[MainId: 75063][Trigger: Q75063Trigger] LightUpTriggerIn")
end

function Q75063Trigger:TriggerOut()
    print("[MainId: 75063][Trigger: Q75063Trigger] TriggerOut")
end

return Q75063Trigger
