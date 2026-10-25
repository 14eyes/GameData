require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72280Trigger2 = class("Q72280Trigger2", GadgetActorProxy)
Q72280Trigger2.defaultAlias = "Q72280Trigger2"
local Q72280ClientConfig = require("Quest/Client/Q72280ClientConfig")

local subIDs = Q72280ClientConfig.SubIDs
local npcs = Q72280ClientConfig.Npcs
local datas = Q72280ClientConfig.Datas

function Q72280Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72280Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72280Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72280"):RequestInteraction(npcs.Npc1040Data.alias)
    self:DestroySelf()
end

function Q72280Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q72280Trigger2
