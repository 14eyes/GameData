require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7305526Trigger = class("Q7305526Trigger", GadgetActorProxy)
Q7305526Trigger.defaultAlias = "Q7305526Trigger"
local Q73055ClientConfig = require("Quest/Client/Q73055ClientConfig")

local subIDs = Q73055ClientConfig.SubIDs
local npcs = Q73055ClientConfig.Npcs
local datas = Q73055ClientConfig.Datas

function Q7305526Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7305526Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(60, 30, 30, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7305526Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7305526)
    self:DestroySelf()
end

function Q7305526Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7305526Trigger
