require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7700202Trigger = class("Q7700202Trigger", GadgetActorProxy)
Q7700202Trigger.defaultAlias = "Q7700202Trigger"
local Q77002ClientConfig = require("Quest/Client/Q77002ClientConfig")

local this
local subIDs = Q77002ClientConfig.SubIDs
local datas = Q77002ClientConfig.Datas
local npcs = Q77002ClientConfig.Npcs

function Q7700202Trigger:OnPostDataPrepare()
    print("Q7700202Trigger - OnPostDataPrepare")
    this = self
end

function Q7700202Trigger:OnPostComponentPrepare()
    print("Q7700202Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77002)
end

function Q7700202Trigger:TriggerIn()
    print("Q7700202Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7700202})
    this:DestroySelf()
end

function Q7700202Trigger:PreTriggerIn()
    print("Q7700202Trigger - PreTriggerIn")
end

function Q7700202Trigger:LightUpTriggerIn()
    print("Q7700202Trigger - LightUpTriggerIn")
end

function Q7700202Trigger:TriggerOut()
    print("Q7700202Trigger - TriggerOut")
end

return Q7700202Trigger
