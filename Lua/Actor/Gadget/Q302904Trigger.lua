require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302904Trigger = class("Q302904Trigger", GadgetActorProxy)
Q302904Trigger.defaultAlias = "Q302904Trigger"
local Q3029ClientConfig = require("Quest/Client/Q3029ClientConfig")

local this
local subIDs = Q3029ClientConfig.SubIDs
local npcs = Q3029ClientConfig.Npcs
local datas = Q3029ClientConfig.Datas

function Q302904Trigger:OnPostDataPrepare()
    print("[MainId: 3029][Trigger: Q302904Trigger] OnPostDataPrepare")
    this = self
end

function Q302904Trigger:OnPostComponentPrepare()
    print("[MainId: 3029][Trigger: Q302904Trigger] OnPostComponentPrepare")
    this:AddPolygonTrigger(1, "AQ_302904_Inside", self.TriggerIn, self.TriggerOut, nil, nil, 3029)
end

function Q302904Trigger:TriggerIn()
    print("[MainId: 3029][Trigger: Q302904Trigger] TriggerIn")
    actorMgr:GetActor("3029"):RequestInteraction(npcs.Npc1056Data.alias)
    this:DestroySelf()
end

function Q302904Trigger:TriggerOut()
    print("[MainId: 3029][Trigger: Q302904Trigger] TriggerOut")
end

return Q302904Trigger
