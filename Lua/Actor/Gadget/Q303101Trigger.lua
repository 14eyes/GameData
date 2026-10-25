require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303101Trigger = class("Q303101Trigger", GadgetActorProxy)
Q303101Trigger.defaultAlias = "Q303101Trigger"
local Q3031ClientConfig = require("Quest/Client/Q3031ClientConfig")

local this
local subIDs = Q3031ClientConfig.SubIDs
local npcs = Q3031ClientConfig.Npcs
local datas = Q3031ClientConfig.Datas

function Q303101Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q303101Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q303101Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3031"):RequestInteraction(npcs.Npc1056Data.alias)
    this:DestroySelf()
end

function Q303101Trigger:TriggerOut()
    print("TriggerOut")
end

return Q303101Trigger
