require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3019Trigger3 = class("Q3019Trigger3", GadgetActorProxy)
Q3019Trigger3.defaultAlias = "Q3019Trigger3"
local Q3019ClientConfig = require("Quest/Client/Q3019ClientConfig")

local subIDs = Q3019ClientConfig.SubIDs
local npcs = Q3019ClientConfig.Npcs
local datas = Q3019ClientConfig.Datas

function Q3019Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3019Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3019Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3019"):RequestInteraction(npcs.Npc1058Data.alias)
    self:DestroySelf()
end

function Q3019Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q3019Trigger3
