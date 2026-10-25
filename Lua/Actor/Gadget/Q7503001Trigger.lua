require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7503001Trigger = class("Q7503001Trigger", GadgetActorProxy)
Q7503001Trigger.defaultAlias = "Q7503001Trigger"
local Q75030ClientConfig = require("Quest/Client/Q75030ClientConfig")

local this
local subIDs = Q75030ClientConfig.SubIDs
local npcs = Q75030ClientConfig.Npcs
local datas = Q75030ClientConfig.Datas

function Q7503001Trigger:OnPostDataPrepare()
    print("[MainId: 75030][Trigger: Q7503001Trigger] OnPostDataPrepare")
    this = self
end

function Q7503001Trigger:OnPostComponentPrepare()
    print("[MainId: 75030][Trigger: Q7503001Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(8, 9, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75030)
end

function Q7503001Trigger:TriggerIn()
    print("[MainId: 75030][Trigger: Q7503001Trigger] TriggerIn")
    actorMgr:GetActor("75030"):RequestInteraction(npcs.Npc6137Data.alias, "", true)
end

function Q7503001Trigger:PreTriggerIn()
    print("[MainId: 75030][Trigger: Q7503001Trigger] PreTriggerIn")
end

function Q7503001Trigger:LightUpTriggerIn()
    print("[MainId: 75030][Trigger: Q7503001Trigger] LightUpTriggerIn")
end

function Q7503001Trigger:TriggerOut()
    print("[MainId: 75030][Trigger: Q7503001Trigger] TriggerOut")
end

return Q7503001Trigger
