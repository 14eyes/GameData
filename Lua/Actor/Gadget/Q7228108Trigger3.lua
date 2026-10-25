require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7228108Trigger3 = class("Q7228108Trigger3", GadgetActorProxy)
Q7228108Trigger3.defaultAlias = "Q7228108Trigger3"
local Q72281ClientConfig = require("Quest/Client/Q72281ClientConfig")

local subIDs = Q72281ClientConfig.SubIDs
local npcs = Q72281ClientConfig.Npcs
local datas = Q72281ClientConfig.Datas

function Q7228108Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7228108Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7228108Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72281"):RequestInteraction(npcs.Npc1039Data.alias)
    self:DestroySelf()
end

function Q7228108Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q7228108Trigger3
