require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13010Trigger4 = class("Q13010Trigger4", GadgetActorProxy)
Q13010Trigger4.defaultAlias = "Q13010Trigger4"
local Q13010ClientConfig = require("Quest/Client/Q13010ClientConfig")

local subIDs = Q13010ClientConfig.SubIDs
local npcs = Q13010ClientConfig.Npcs
local datas = Q13010ClientConfig.Datas

function Q13010Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q13010Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13010Trigger4:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13010"):RequestInteraction(npcs.Npc1058Data.alias)
    self:DestroySelf()
end

function Q13010Trigger4:TriggerOut()
    print("TriggerOut")
end

return Q13010Trigger4
