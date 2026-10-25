require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7268404Trigger = class("Q7268404Trigger", GadgetActorProxy)
Q7268404Trigger.defaultAlias = "Q7268404Trigger"
local Q72684ClientConfig = require("Quest/Client/Q72684ClientConfig")

local subIDs = Q72684ClientConfig.SubIDs
local npcs = Q72684ClientConfig.Npcs
local datas = Q72684ClientConfig.Datas

function Q7268404Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7268404Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40.07587, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7268404Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72684"):NarratorOnlyTaskByData(datas.NarratorWithId7268403, function(arg1)
        actorUtils.FinishQuestID(false, 7268404)
    end, 72684)

    self:DestroySelf()
end

function Q7268404Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7268404Trigger
