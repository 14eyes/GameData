require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1300001Trigger = class("Q1300001Trigger", GadgetActorProxy)
Q1300001Trigger.defaultAlias = "Q1300001Trigger"
local Q13000ClientConfig = require("Quest/Client/Q13000ClientConfig")

local subIDs = Q13000ClientConfig.SubIDs
local npcs = Q13000ClientConfig.Npcs
local datas = Q13000ClientConfig.Datas

function Q1300001Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1300001Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1300001Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13000"):RequestInteraction(npcs.Npc4019Data.alias)
    self:DestroySelf()
end

function Q1300001Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1300001Trigger
