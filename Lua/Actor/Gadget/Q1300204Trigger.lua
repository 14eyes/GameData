require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1300204Trigger = class("Q1300204Trigger", GadgetActorProxy)
Q1300204Trigger.defaultAlias = "Q1300204Trigger"
local Q13002ClientConfig = require("Quest/Client/Q13002ClientConfig")

local subIDs = Q13002ClientConfig.SubIDs
local npcs = Q13002ClientConfig.Npcs
local datas = Q13002ClientConfig.Datas

function Q1300204Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1300204Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(17, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1300204Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13002"):RequestInteraction(npcs.Npc12615Data.alias)
    self:DestroySelf()
end

function Q1300204Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1300204Trigger
