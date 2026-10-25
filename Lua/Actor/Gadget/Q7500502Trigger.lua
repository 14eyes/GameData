require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500502Trigger = class("Q7500502Trigger", GadgetActorProxy)
Q7500502Trigger.defaultAlias = "Q7500502Trigger"
local Q75005ClientConfig = require("Quest/Client/Q75005ClientConfig")

local this
local subIDs = Q75005ClientConfig.SubIDs
local npcs = Q75005ClientConfig.Npcs
local points = Q75005ClientConfig.Points
local datas = Q75005ClientConfig.Datas

function Q7500502Trigger:OnPostDataPrepare()
    print("[MainId: 75005][Trigger: Q7500502Trigger] OnPostDataPrepare")
    this = self
end

function Q7500502Trigger:OnPostComponentPrepare()
    print("[MainId: 75005][Trigger: Q7500502Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(14.5, 34, 26.64626, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75005)
end

function Q7500502Trigger:TriggerIn()
    print("[MainId: 75005][Trigger: Q7500502Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500502)
    this:DestroySelf()
end

function Q7500502Trigger:PreTriggerIn()
    print("[MainId: 75005][Trigger: Q7500502Trigger] PreTriggerIn")
end

function Q7500502Trigger:LightUpTriggerIn()
    print("[MainId: 75005][Trigger: Q7500502Trigger] LightUpTriggerIn")
end

function Q7500502Trigger:TriggerOut()
    print("[MainId: 75005][Trigger: Q7500502Trigger] TriggerOut")
end

return Q7500502Trigger
