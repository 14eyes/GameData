require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7228106Trigger2 = class("Q7228106Trigger2", GadgetActorProxy)
Q7228106Trigger2.defaultAlias = "Q7228106Trigger2"
local Q72281ClientConfig = require("Quest/Client/Q72281ClientConfig")

local subIDs = Q72281ClientConfig.SubIDs
local npcs = Q72281ClientConfig.Npcs
local datas = Q72281ClientConfig.Datas

function Q7228106Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7228106Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7228106Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72281"):RequestInteraction(npcs.Npc20562Data.alias)
    self:DestroySelf()
end

function Q7228106Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q7228106Trigger2
