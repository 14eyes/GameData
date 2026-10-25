require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200507Trigger = class("Q200507Trigger", GadgetActorProxy)
Q200507Trigger.defaultAlias = "Q200507Trigger"
local Q2005ClientConfig = require("Quest/Client/Q2005ClientConfig")

local mainID = Q2005ClientConfig.MainID
local actorAlias = Q2005ClientConfig.ActorAlias
local subIDs = Q2005ClientConfig.SubIDs
local npcs = Q2005ClientConfig.Npcs
local gadgets = Q2005ClientConfig.Gadgets
local datas = Q2005ClientConfig.Datas

function Q200507Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200507Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200507Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.Npc12023Data.alias)
    self:DestroySelf()
end

function Q200507Trigger:TriggerOut()
    print("TriggerOut")
end

return Q200507Trigger
