require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72280Trigger1 = class("Q72280Trigger1", GadgetActorProxy)
Q72280Trigger1.defaultAlias = "Q72280Trigger1"
local Q72280ClientConfig = require("Quest/Client/Q72280ClientConfig")

local subIDs = Q72280ClientConfig.SubIDs
local npcs = Q72280ClientConfig.Npcs
local datas = Q72280ClientConfig.Datas

function Q72280Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72280Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72280Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72280"):RequestInteraction(npcs.Npc1038Data.alias)
    self:DestroySelf()
end

function Q72280Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q72280Trigger1
