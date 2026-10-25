require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7007806Trigger = class("Q7007806Trigger", GadgetActorProxy)
Q7007806Trigger.defaultAlias = "Q7007806Trigger"
local Q70078ClientConfig = require("Quest/Client/Q70078ClientConfig")

local this
local subIDs = Q70078ClientConfig.SubIDs
local datas = Q70078ClientConfig.Datas
local npcs = Q70078ClientConfig.Npcs
local points = Q70078ClientConfig.Points

function Q7007806Trigger:OnPostDataPrepare()
    print("Q7007806Trigger - OnPostDataPrepare")
    this = self
end

function Q7007806Trigger:OnPostComponentPrepare()
    print("Q7007806Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70078)
end

function Q7007806Trigger:TriggerIn()
    print("Q7007806Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7007806)
    this:DestroySelf()
end

function Q7007806Trigger:PreTriggerIn()
    print("Q7007806Trigger - PreTriggerIn")
end

function Q7007806Trigger:LightUpTriggerIn()
    print("Q7007806Trigger - LightUpTriggerIn")
end

function Q7007806Trigger:TriggerOut()
    print("Q7007806Trigger - TriggerOut")
end

return Q7007806Trigger
