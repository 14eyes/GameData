require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q10120Trigger = class("Q10120Trigger", GadgetActorProxy)
Q10120Trigger.defaultAlias = "Q10120Trigger"
local Q10120ClientConfig = require("Quest/Client/Q10120ClientConfig")

local this
local subIDs = Q10120ClientConfig.SubIDs
local npcs = Q10120ClientConfig.Npcs
local datas = Q10120ClientConfig.Datas

function Q10120Trigger:OnPostDataPrepare()
    print("[MainId: 10120][Trigger: Q10120Trigger] OnPostDataPrepare")
    this = self
end

function Q10120Trigger:OnPostComponentPrepare()
    print("[MainId: 10120][Trigger: Q10120Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q10120Trigger:TriggerIn()
    print("[MainId: 10120][Trigger: Q10120Trigger] TriggerIn")
    actorMgr:GetActor("10120"):RequestInteraction(npcs.QinData.alias)
    this:DestroySelf()
end

function Q10120Trigger:TriggerOut()
    print("[MainId: 10120][Trigger: Q10120Trigger] TriggerOut")
end

return Q10120Trigger
