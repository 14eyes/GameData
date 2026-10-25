require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1300303Trigger = class("Q1300303Trigger", GadgetActorProxy)
Q1300303Trigger.defaultAlias = "Q1300303Trigger"
local Q13003ClientConfig = require("Quest/Client/Q13003ClientConfig")

local subIDs = Q13003ClientConfig.SubIDs
local npcs = Q13003ClientConfig.Npcs
local datas = Q13003ClientConfig.Datas

function Q1300303Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1300303Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1300303Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13003"):RequestInteraction(npcs.Npc1050Data.alias)
end

function Q1300303Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1300303Trigger
