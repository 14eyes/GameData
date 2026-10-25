require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7602317Trigger = class("Q7602317Trigger", GadgetActorProxy)
Q7602317Trigger.defaultAlias = "Q7602317Trigger"
local Q76023ClientConfig = require("Quest/Client/Q76023ClientConfig")

local this
local subIDs = Q76023ClientConfig.SubIDs
local datas = Q76023ClientConfig.Datas
local npcs = Q76023ClientConfig.Npcs
local points = Q76023ClientConfig.Points

function Q7602317Trigger:OnPostDataPrepare()
    print("Q7602317Trigger - OnPostDataPrepare")
    this = self
end

function Q7602317Trigger:OnPostComponentPrepare()
    print("Q7602317Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76023)
end

function Q7602317Trigger:TriggerIn()
    print("Q7602317Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7602317)
    this:DestroySelf()
end

function Q7602317Trigger:PreTriggerIn()
    print("Q7602317Trigger - PreTriggerIn")
end

function Q7602317Trigger:LightUpTriggerIn()
    print("Q7602317Trigger - LightUpTriggerIn")
end

function Q7602317Trigger:TriggerOut()
    print("Q7602317Trigger - TriggerOut")
end

return Q7602317Trigger
