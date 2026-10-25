require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40015199Trigger = class("Q40015199Trigger", GadgetActorProxy)
Q40015199Trigger.defaultAlias = "Q40015199Trigger"
local Q40015ClientConfig = require("Quest/Client/Q40015ClientConfig")

local mainID = Q40015ClientConfig.MainID
local actorAlias = Q40015ClientConfig.ActorAlias
local subIDs = Q40015ClientConfig.SubIDs
local npcs = Q40015ClientConfig.Npcs
local gadgets = Q40015ClientConfig.Gadgets
local datas = Q40015ClientConfig.Datas

function Q40015199Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40015199Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40015199Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.XianglingData.alias)
    self:DestroySelf()
end

function Q40015199Trigger:TriggerOut()
    print("TriggerOut")
end

return Q40015199Trigger
