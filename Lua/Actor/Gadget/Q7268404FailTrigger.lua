require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7268404FailTrigger = class("Q7268404FailTrigger", GadgetActorProxy)
Q7268404FailTrigger.defaultAlias = "Q7268404FailTrigger"
local Q72684ClientConfig = require("Quest/Client/Q72684ClientConfig")

local subIDs = Q72684ClientConfig.SubIDs
local npcs = Q72684ClientConfig.Npcs
local datas = Q72684ClientConfig.Datas

function Q7268404FailTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7268404FailTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(27.57912, 30, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7268404FailTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(true, 7268404)
    actorUtils.FinishQuestID(true, 7268405)
    self:DestroySelf()
end

function Q7268404FailTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7268404FailTrigger
