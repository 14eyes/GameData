require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q800709_TriggerIn = class("Q800709_TriggerIn", GadgetActorProxy)
Q800709_TriggerIn.defaultAlias = "Q800709_TriggerIn"
local Q8007ClientConfig = require("Quest/Client/Q8007ClientConfig")

local subIDs = Q8007ClientConfig.SubIDs
local npcs = Q8007ClientConfig.Npcs
local gadgets = Q8007ClientConfig.Gadgets
local datas = Q8007ClientConfig.Datas

function Q800709_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q800709_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q800709_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8007"):RequestInteraction(npcs.Npc12427Data.alias)
    self:DestroySelf()
end

function Q800709_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q800709_TriggerIn
