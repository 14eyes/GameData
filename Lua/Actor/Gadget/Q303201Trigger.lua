require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303201Trigger = class("Q303201Trigger", GadgetActorProxy)
Q303201Trigger.defaultAlias = "Q303201Trigger"
local Q3032ClientConfig = require("Quest/Client/Q3032ClientConfig")

local this
local subIDs = Q3032ClientConfig.SubIDs
local npcs = Q3032ClientConfig.Npcs
local datas = Q3032ClientConfig.Datas

function Q303201Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q303201Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q303201Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3032"):RequestInteraction(npcs.Npc1056Data.alias)
    this:DestroySelf()
end

function Q303201Trigger:TriggerOut()
    print("TriggerOut")
end

return Q303201Trigger
