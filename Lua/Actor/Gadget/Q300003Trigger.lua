require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300003Trigger = class("Q300003Trigger", GadgetActorProxy)
Q300003Trigger.defaultAlias = "Q300003Trigger"
local Q3000ClientConfig = require("Quest/Client/Q3000ClientConfig")

local subIDs = Q3000ClientConfig.SubIDs
local npcs = Q3000ClientConfig.Npcs
local datas = Q3000ClientConfig.Datas

function Q300003Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300003Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(45, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300003Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3000"):RequestInteraction(npcs.Npc12554Data.alias)
    self:DestroySelf()
end

function Q300003Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300003Trigger
