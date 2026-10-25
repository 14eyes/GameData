require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7228706Trigger = class("Q7228706Trigger", GadgetActorProxy)
Q7228706Trigger.defaultAlias = "Q7228706Trigger"
local Q72287ClientConfig = require("Quest/Client/Q72287ClientConfig")

local subIDs = Q72287ClientConfig.SubIDs
local npcs = Q72287ClientConfig.Npcs
local datas = Q72287ClientConfig.Datas

function Q7228706Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7228706Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7228706Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72287"):RequestInteraction(npcs.Npc20718Data.alias)
    self:DestroySelf()
end

function Q7228706Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7228706Trigger
