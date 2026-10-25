require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303115Trigger = class("Q303115Trigger", GadgetActorProxy)
Q303115Trigger.defaultAlias = "Q303115Trigger"
local Q3031ClientConfig = require("Quest/Client/Q3031ClientConfig")

local this
local subIDs = Q3031ClientConfig.SubIDs
local npcs = Q3031ClientConfig.Npcs
local datas = Q3031ClientConfig.Datas

function Q303115Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q303115Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q303115Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3031"):RequestInteraction(npcs.Npc12991Data.alias)
    this:DestroySelf()
end

function Q303115Trigger:TriggerOut()
    print("TriggerOut")
end

return Q303115Trigger
