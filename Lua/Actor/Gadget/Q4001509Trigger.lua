require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4001509Trigger = class("Q4001509Trigger", GadgetActorProxy)
Q4001509Trigger.defaultAlias = "Q4001509Trigger"
local Q40015ClientConfig = require("Quest/Client/Q40015ClientConfig")

local mainID = Q40015ClientConfig.MainID
local actorAlias = Q40015ClientConfig.ActorAlias
local subIDs = Q40015ClientConfig.SubIDs
local npcs = Q40015ClientConfig.Npcs
local gadgets = Q40015ClientConfig.Gadgets
local datas = Q40015ClientConfig.Datas

function Q4001509Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4001509Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4001509Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.XianglingData.alias)
    self:DestroySelf()
end

function Q4001509Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4001509Trigger
