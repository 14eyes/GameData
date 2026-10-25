require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q800604_TriggerIn = class("Q800604_TriggerIn", GadgetActorProxy)
Q800604_TriggerIn.defaultAlias = "Q800604_TriggerIn"
local Q8006ClientConfig = require("Quest/Client/Q8006ClientConfig")

local subIDs = Q8006ClientConfig.SubIDs
local npcs = Q8006ClientConfig.Npcs
local datas = Q8006ClientConfig.Datas

function Q800604_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q800604_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q800604_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8006"):RequestInteraction(npcs.Npc12427Data.alias)
    self:DestroySelf()
end

function Q800604_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q800604_TriggerIn
