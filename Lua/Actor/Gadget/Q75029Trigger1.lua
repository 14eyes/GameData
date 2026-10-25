require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75029Trigger1 = class("Q75029Trigger1", GadgetActorProxy)
Q75029Trigger1.defaultAlias = "Q75029Trigger1"
local Q75029ClientConfig = require("Quest/Client/Q75029ClientConfig")

local this
local subIDs = Q75029ClientConfig.SubIDs
local npcs = Q75029ClientConfig.Npcs
local datas = Q75029ClientConfig.Datas

function Q75029Trigger1:OnPostDataPrepare()
    print("[MainId: 75029][Trigger: Q75029Trigger1] OnPostDataPrepare")
    this = self
end

function Q75029Trigger1:OnPostComponentPrepare()
    print("[MainId: 75029][Trigger: Q75029Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(3.6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75029)
end

function Q75029Trigger1:TriggerIn()
    print("[MainId: 75029][Trigger: Q75029Trigger1] TriggerIn")
    actorMgr:GetActor("75029"):RequestInteraction(npcs.Npc6136Data.alias, "", true)
    this:DestroySelf()
end

function Q75029Trigger1:PreTriggerIn()
    print("[MainId: 75029][Trigger: Q75029Trigger1] PreTriggerIn")
end

function Q75029Trigger1:LightUpTriggerIn()
    print("[MainId: 75029][Trigger: Q75029Trigger1] LightUpTriggerIn")
end

function Q75029Trigger1:TriggerOut()
    print("[MainId: 75029][Trigger: Q75029Trigger1] TriggerOut")
end

return Q75029Trigger1
