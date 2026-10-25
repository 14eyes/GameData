require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602318Trigger = class("Q602318Trigger", GadgetActorProxy)
Q602318Trigger.defaultAlias = "Q602318Trigger"
local Q6023ClientConfig = require("Quest/Client/Q6023ClientConfig")

local this
local subIDs = Q6023ClientConfig.SubIDs
local datas = Q6023ClientConfig.Datas
local npcs = Q6023ClientConfig.Npcs
local points = Q6023ClientConfig.Points

function Q602318Trigger:OnPostDataPrepare()
    print("Q602318Trigger - OnPostDataPrepare")
    this = self
end

function Q602318Trigger:OnPostComponentPrepare()
    print("Q602318Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6023)
end

function Q602318Trigger:TriggerIn()
    print("Q602318Trigger - TriggerIn")
end

function Q602318Trigger:PreTriggerIn()
    print("Q602318Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602318)
    this:DestroySelf()
end

function Q602318Trigger:LightUpTriggerIn()
    print("Q602318Trigger - LightUpTriggerIn")
end

function Q602318Trigger:TriggerOut()
    print("Q602318Trigger - TriggerOut")
end

return Q602318Trigger
