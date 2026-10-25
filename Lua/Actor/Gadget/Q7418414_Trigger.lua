require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7418414_Trigger = class("Q7418414_Trigger", GadgetActorProxy)
Q7418414_Trigger.defaultAlias = "Q7418414_Trigger"
local Q74184ClientConfig = require("Quest/Client/Q74184ClientConfig")

local this
local subIDs = Q74184ClientConfig.SubIDs
local npcs = Q74184ClientConfig.Npcs
local points = Q74184ClientConfig.Points
local datas = Q74184ClientConfig.Datas

function Q7418414_Trigger:OnPostDataPrepare()
    print("[MainId: 74184][Trigger: Q7418414_Trigger] OnPostDataPrepare")
    this = self
end

function Q7418414_Trigger:OnPostComponentPrepare()
    print("[MainId: 74184][Trigger: Q7418414_Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74184)
end

function Q7418414_Trigger:TriggerIn()
    print("[MainId: 74184][Trigger: Q7418414_Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7418414)
    this:DestroySelf()
end

function Q7418414_Trigger:PreTriggerIn()
    print("[MainId: 74184][Trigger: Q7418414_Trigger] PreTriggerIn")
end

function Q7418414_Trigger:LightUpTriggerIn()
    print("[MainId: 74184][Trigger: Q7418414_Trigger] LightUpTriggerIn")
end

function Q7418414_Trigger:TriggerOut()
    print("[MainId: 74184][Trigger: Q7418414_Trigger] TriggerOut")
end

return Q7418414_Trigger
