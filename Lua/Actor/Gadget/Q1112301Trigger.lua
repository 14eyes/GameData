require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1112301Trigger = class("Q1112301Trigger", GadgetActorProxy)
Q1112301Trigger.defaultAlias = "Q1112301Trigger"
local Q11123ClientConfig = require("Quest/Client/Q11123ClientConfig")

local mainID = Q11123ClientConfig.MainID
local actorAlias = Q11123ClientConfig.ActorAlias
local subIDs = Q11123ClientConfig.SubIDs
local npcs = Q11123ClientConfig.Npcs
local gadgets = Q11123ClientConfig.Gadgets
local datas = Q11123ClientConfig.Datas

function Q1112301Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1112301Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1112301Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.Npc10408Data.alias)
    self:DestroySelf()
end

function Q1112301Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1112301Trigger
