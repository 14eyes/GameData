require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75029Trigger = class("Q75029Trigger", GadgetActorProxy)
Q75029Trigger.defaultAlias = "Q75029Trigger"
local Q75029ClientConfig = require("Quest/Client/Q75029ClientConfig")

local this
local subIDs = Q75029ClientConfig.SubIDs
local npcs = Q75029ClientConfig.Npcs
local datas = Q75029ClientConfig.Datas

function Q75029Trigger:OnPostDataPrepare()
    print("[MainId: 75029][Trigger: Q75029Trigger] OnPostDataPrepare")
    this = self
end

function Q75029Trigger:OnPostComponentPrepare()
    print("[MainId: 75029][Trigger: Q75029Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(15, 11, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75029)
end

function Q75029Trigger:TriggerIn()
    print("[MainId: 75029][Trigger: Q75029Trigger] TriggerIn")
    actorMgr:GetActor("75029"):RequestInteraction(npcs.Npc6136Data.alias, "", true)
end

function Q75029Trigger:PreTriggerIn()
    print("[MainId: 75029][Trigger: Q75029Trigger] PreTriggerIn")
end

function Q75029Trigger:LightUpTriggerIn()
    print("[MainId: 75029][Trigger: Q75029Trigger] LightUpTriggerIn")
end

function Q75029Trigger:TriggerOut()
    print("[MainId: 75029][Trigger: Q75029Trigger] TriggerOut")
end

return Q75029Trigger
