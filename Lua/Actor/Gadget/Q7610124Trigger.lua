require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7610124Trigger = class("Q7610124Trigger", GadgetActorProxy)
Q7610124Trigger.defaultAlias = "Q7610124Trigger"
local Q76101ClientConfig = require("Quest/Client/Q76101ClientConfig")

local this
local subIDs = Q76101ClientConfig.SubIDs
local datas = Q76101ClientConfig.Datas
local npcs = Q76101ClientConfig.Npcs
local points = Q76101ClientConfig.Points

function Q7610124Trigger:OnPostDataPrepare()
    print("Q7610124Trigger - OnPostDataPrepare")
    this = self
end

function Q7610124Trigger:OnPostComponentPrepare()
    print("Q7610124Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76101)
end

function Q7610124Trigger:TriggerIn()
    print("Q7610124Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7610124)
    this:DestroySelf()
end

function Q7610124Trigger:PreTriggerIn()
    print("Q7610124Trigger - PreTriggerIn")
end

function Q7610124Trigger:LightUpTriggerIn()
    print("Q7610124Trigger - LightUpTriggerIn")
end

function Q7610124Trigger:TriggerOut()
    print("Q7610124Trigger - TriggerOut")
end

return Q7610124Trigger
