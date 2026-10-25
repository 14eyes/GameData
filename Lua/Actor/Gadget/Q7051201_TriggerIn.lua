require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7051201_TriggerIn = class("Q7051201_TriggerIn", GadgetActorProxy)
Q7051201_TriggerIn.defaultAlias = "Q7051201_TriggerIn"
local Q70512ClientConfig = require("Quest/Client/Q70512ClientConfig")

local subIDs = Q70512ClientConfig.SubIDs
local npcs = Q70512ClientConfig.Npcs
local datas = Q70512ClientConfig.Datas

function Q7051201_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7051201_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7051201_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("70512"):RequestInteraction(npcs.Npc1531Data.alias)
    self:DestroySelf()
end

function Q7051201_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q7051201_TriggerIn
