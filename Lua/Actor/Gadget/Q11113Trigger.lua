require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11113Trigger = class("Q11113Trigger", GadgetActorProxy)
Q11113Trigger.defaultAlias = "Q11113Trigger"
local Q11113ClientConfig = require("Quest/Client/Q11113ClientConfig")

local mainID = Q11113ClientConfig.MainID
local actorAlias = Q11113ClientConfig.ActorAlias
local subIDs = Q11113ClientConfig.SubIDs
local npcs = Q11113ClientConfig.Npcs
local gadgets = Q11113ClientConfig.Gadgets
local datas = Q11113ClientConfig.Datas

function Q11113Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11113Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11113Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.Npc10366Data.alias)
    actorMgr:DestroyEntityActor(datas.Q11113Trigger_.alias, 3, false)
end

function Q11113Trigger:TriggerOut()
    print("TriggerOut")
end

return Q11113Trigger
