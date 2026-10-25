require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2303302Trigger = class("Q2303302Trigger", GadgetActorProxy)
Q2303302Trigger.defaultAlias = "Q2303302Trigger"
local Q23033ClientConfig = require("Quest/Client/Q23033ClientConfig")

local this
local subIDs = Q23033ClientConfig.SubIDs
local npcs = Q23033ClientConfig.Npcs
local gadgets = Q23033ClientConfig.Gadgets
local datas = Q23033ClientConfig.Datas

function Q2303302Trigger:OnPostDataPrepare()
    print("[MainId: 23033][Trigger: Q2303302Trigger] OnPostDataPrepare")
    this = self
end

function Q2303302Trigger:OnPostComponentPrepare()
    print("[MainId: 23033][Trigger: Q2303302Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2303302Trigger:TriggerIn()
    print("[MainId: 23033][Trigger: Q2303302Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 2303302)
    this:DestroySelf()
end

function Q2303302Trigger:TriggerOut()
    print("[MainId: 23033][Trigger: Q2303302Trigger] TriggerOut")
end

return Q2303302Trigger
