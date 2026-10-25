require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200209Trigger = class("Q200209Trigger", GadgetActorProxy)
Q200209Trigger.defaultAlias = "Q200209Trigger"
local Q2002ClientConfig = require("Quest/Client/Q2002ClientConfig")

local mainID = Q2002ClientConfig.MainID
local actorAlias = Q2002ClientConfig.ActorAlias
local subIDs = Q2002ClientConfig.SubIDs
local npcs = Q2002ClientConfig.Npcs
local gadgets = Q2002ClientConfig.Gadgets
local datas = Q2002ClientConfig.Datas

function Q200209Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200209Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200209Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.Npc10414Data.alias)
    self:DestroySelf()
end

function Q200209Trigger:TriggerOut()
    print("TriggerOut")
end

return Q200209Trigger
