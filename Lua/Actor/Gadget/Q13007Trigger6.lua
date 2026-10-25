require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13007Trigger6 = class("Q13007Trigger6", GadgetActorProxy)
Q13007Trigger6.defaultAlias = "Q13007Trigger6"
local Q13007ClientConfig = require("Quest/Client/Q13007ClientConfig")

local subIDs = Q13007ClientConfig.SubIDs
local npcs = Q13007ClientConfig.Npcs
local datas = Q13007ClientConfig.Datas

function Q13007Trigger6:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q13007Trigger6:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13007Trigger6:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13007"):RequestInteraction(npcs.Npc4057Data.alias)
    self:DestroySelf()
end

function Q13007Trigger6:TriggerOut()
    print("TriggerOut")
end

return Q13007Trigger6
