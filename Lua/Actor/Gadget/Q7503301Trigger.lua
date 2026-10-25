require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7503301Trigger = class("Q7503301Trigger", GadgetActorProxy)
Q7503301Trigger.defaultAlias = "Q7503301Trigger"
local Q75033ClientConfig = require("Quest/Client/Q75033ClientConfig")

local this
local subIDs = Q75033ClientConfig.SubIDs
local npcs = Q75033ClientConfig.Npcs
local datas = Q75033ClientConfig.Datas

function Q7503301Trigger:OnPostDataPrepare()
    print("[MainId: 75033][Trigger: Q7503301Trigger] OnPostDataPrepare")
    this = self
end

function Q7503301Trigger:OnPostComponentPrepare()
    print("[MainId: 75033][Trigger: Q7503301Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75033)
end

function Q7503301Trigger:TriggerIn()
    print("[MainId: 75033][Trigger: Q7503301Trigger] TriggerIn")
    actorMgr:GetActor("75033"):RequestInteraction(npcs.Npc6136Data.alias, "", true)
    this:DestroySelf()
end

function Q7503301Trigger:PreTriggerIn()
    print("[MainId: 75033][Trigger: Q7503301Trigger] PreTriggerIn")
end

function Q7503301Trigger:LightUpTriggerIn()
    print("[MainId: 75033][Trigger: Q7503301Trigger] LightUpTriggerIn")
end

function Q7503301Trigger:TriggerOut()
    print("[MainId: 75033][Trigger: Q7503301Trigger] TriggerOut")
end

return Q7503301Trigger
