require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200906Trigger = class("Q200906Trigger", GadgetActorProxy)
Q200906Trigger.defaultAlias = "Q200906Trigger"
local Q2009ClientConfig = require("Quest/Client/Q2009ClientConfig")

local mainID = Q2009ClientConfig.MainID
local actorAlias = Q2009ClientConfig.ActorAlias
local subIDs = Q2009ClientConfig.SubIDs
local npcs = Q2009ClientConfig.Npcs
local gadgets = Q2009ClientConfig.Gadgets
local datas = Q2009ClientConfig.Datas

function Q200906Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200906Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200906Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.Npc1039Data.alias)
    self:DestroySelf()
end

function Q200906Trigger:TriggerOut()
    print("TriggerOut")
end

return Q200906Trigger
