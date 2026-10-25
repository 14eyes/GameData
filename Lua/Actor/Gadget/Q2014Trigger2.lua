require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2014Trigger2 = class("Q2014Trigger2", GadgetActorProxy)
Q2014Trigger2.defaultAlias = "Q2014Trigger2"
local Q2014ClientConfig = require("Quest/Client/Q2014ClientConfig")

local subIDs = Q2014ClientConfig.SubIDs
local npcs = Q2014ClientConfig.Npcs
local datas = Q2014ClientConfig.Datas

function Q2014Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2014Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2014Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("2014"):RequestInteraction(npcs.Npc1037Data.alias)
    self:DestroySelf()
end

function Q2014Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q2014Trigger2
