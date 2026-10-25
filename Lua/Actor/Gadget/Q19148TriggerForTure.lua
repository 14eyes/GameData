require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19148TriggerForTure = class("Q19148TriggerForTure", GadgetActorProxy)
Q19148TriggerForTure.defaultAlias = "Q19148TriggerForTure"
local Q19148ClientConfig = require("Quest/Client/Q19148ClientConfig")

local subIDs = Q19148ClientConfig.SubIDs
local npcs = Q19148ClientConfig.Npcs
local datas = Q19148ClientConfig.Datas

function Q19148TriggerForTure:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19148TriggerForTure:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19148TriggerForTure:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19148"):RequestInteraction(npcs.Npc12512Data.alias)
    self:DestroySelf()
end

function Q19148TriggerForTure:TriggerOut()
    print("TriggerOut")
end

return Q19148TriggerForTure
