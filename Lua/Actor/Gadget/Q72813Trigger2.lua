require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72813Trigger2 = class("Q72813Trigger2", GadgetActorProxy)
Q72813Trigger2.defaultAlias = "Q72813Trigger2"
local Q72813ClientConfig = require("Quest/Client/Q72813ClientConfig")

local subIDs = Q72813ClientConfig.SubIDs
local npcs = Q72813ClientConfig.Npcs
local datas = Q72813ClientConfig.Datas

function Q72813Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72813Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72813Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72813"):RequestInteraction(npcs.NPC20088Data.alias)
    self:DestroySelf()
end

function Q72813Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q72813Trigger2
