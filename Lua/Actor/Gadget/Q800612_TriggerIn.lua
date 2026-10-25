require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q800612_TriggerIn = class("Q800612_TriggerIn", GadgetActorProxy)
Q800612_TriggerIn.defaultAlias = "Q800612_TriggerIn"
local Q8006ClientConfig = require("Quest/Client/Q8006ClientConfig")

local subIDs = Q8006ClientConfig.SubIDs
local npcs = Q8006ClientConfig.Npcs
local datas = Q8006ClientConfig.Datas

function Q800612_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q800612_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q800612_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8006"):RequestInteraction(npcs.Npc12427Data.alias)
    self:DestroySelf()
end

function Q800612_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q800612_TriggerIn
