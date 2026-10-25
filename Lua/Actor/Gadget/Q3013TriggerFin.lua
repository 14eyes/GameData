require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3013TriggerFin = class("Q3013TriggerFin", GadgetActorProxy)
Q3013TriggerFin.defaultAlias = "Q3013TriggerFin"
local Q3013ClientConfig = require("Quest/Client/Q3013ClientConfig")

local subIDs = Q3013ClientConfig.SubIDs
local npcs = Q3013ClientConfig.Npcs

function Q3013TriggerFin:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3013TriggerFin:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(9, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3013TriggerFin:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3013"):RequestInteraction(npcs.Npc12913Data.alias)
    self:DestroySelf()
end

function Q3013TriggerFin:TriggerOut()
    print("TriggerOut")
end

return Q3013TriggerFin
