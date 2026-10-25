require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13014TriggerEventBEnd = class("Q13014TriggerEventBEnd", GadgetActorProxy)
Q13014TriggerEventBEnd.defaultAlias = "Q13014TriggerEventBEnd"
local Q13014ClientConfig = require("Quest/Client/Q13014ClientConfig")

local subIDs = Q13014ClientConfig.SubIDs
local npcs = Q13014ClientConfig.Npcs
local datas = Q13014ClientConfig.Datas

function Q13014TriggerEventBEnd:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q13014TriggerEventBEnd:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13014TriggerEventBEnd:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13014"):RequestInteraction(npcs.Npc12841Data.alias)
    self:DestroySelf()
end

function Q13014TriggerEventBEnd:TriggerOut()
    print("TriggerOut")
end

return Q13014TriggerEventBEnd
