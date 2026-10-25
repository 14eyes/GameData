require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7602316Trigger = class("Q7602316Trigger", GadgetActorProxy)
Q7602316Trigger.defaultAlias = "Q7602316Trigger"
local Q76023ClientConfig = require("Quest/Client/Q76023ClientConfig")

local this
local subIDs = Q76023ClientConfig.SubIDs
local datas = Q76023ClientConfig.Datas
local npcs = Q76023ClientConfig.Npcs
local points = Q76023ClientConfig.Points

function Q7602316Trigger:OnPostDataPrepare()
    print("Q7602316Trigger - OnPostDataPrepare")
    this = self
end

function Q7602316Trigger:OnPostComponentPrepare()
    print("Q7602316Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76023)
end

function Q7602316Trigger:TriggerIn()
    print("Q7602316Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7602316)
    this:DestroySelf()
end

function Q7602316Trigger:PreTriggerIn()
    print("Q7602316Trigger - PreTriggerIn")
end

function Q7602316Trigger:LightUpTriggerIn()
    print("Q7602316Trigger - LightUpTriggerIn")
end

function Q7602316Trigger:TriggerOut()
    print("Q7602316Trigger - TriggerOut")
end

return Q7602316Trigger
