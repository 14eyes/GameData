require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005508Trigger = class("Q4005508Trigger", GadgetActorProxy)
Q4005508Trigger.defaultAlias = "Q4005508Trigger"
local Q40055ClientConfig = require("Quest/Client/Q40055ClientConfig")

local subIDs = Q40055ClientConfig.SubIDs
local npcs = Q40055ClientConfig.Npcs
local datas = Q40055ClientConfig.Datas

function Q4005508Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005508Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005508Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40055"):RequestInteraction(npcs.WendyData.alias)
    self:DestroySelf()
end

function Q4005508Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005508Trigger
