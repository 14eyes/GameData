require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13006Trigger2 = class("Q13006Trigger2", GadgetActorProxy)
Q13006Trigger2.defaultAlias = "Q13006Trigger2"
local Q13006ClientConfig = require("Quest/Client/Q13006ClientConfig")

local this
local subIDs = Q13006ClientConfig.SubIDs
local npcs = Q13006ClientConfig.Npcs
local datas = Q13006ClientConfig.Datas

function Q13006Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q13006Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13006Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13006"):RequestInteraction(npcs.Npc1054Data.alias)
    this:DestroySelf()
end

function Q13006Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q13006Trigger2
