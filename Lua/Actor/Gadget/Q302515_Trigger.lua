require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302515_Trigger = class("Q302515_Trigger", GadgetActorProxy)
Q302515_Trigger.defaultAlias = "Q302515_Trigger"
local Q3025ClientConfig = require("Quest/Client/Q3025ClientConfig")

local this
local subIDs = Q3025ClientConfig.SubIDs
local npcs = Q3025ClientConfig.Npcs
local datas = Q3025ClientConfig.Datas

function Q302515_Trigger:OnPostDataPrepare()
    print("[MainId: 3025][Trigger: Q302515_Trigger] OnPostDataPrepare")
    this = self
end

function Q302515_Trigger:OnPostComponentPrepare()
    print("[MainId: 3025][Trigger: Q302515_Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302515_Trigger:TriggerIn()
    print("[MainId: 3025][Trigger: Q302515_Trigger] TriggerIn")
    actorMgr:GetActor("3025"):RequestInteraction(npcs.Npc1052Data.alias)
    this:DestroySelf()
end

function Q302515_Trigger:TriggerOut()
    print("[MainId: 3025][Trigger: Q302515_Trigger] TriggerOut")
end

return Q302515_Trigger
