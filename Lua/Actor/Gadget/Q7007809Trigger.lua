require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7007809Trigger = class("Q7007809Trigger", GadgetActorProxy)
Q7007809Trigger.defaultAlias = "Q7007809Trigger"
local Q70078ClientConfig = require("Quest/Client/Q70078ClientConfig")

local this
local subIDs = Q70078ClientConfig.SubIDs
local datas = Q70078ClientConfig.Datas
local npcs = Q70078ClientConfig.Npcs
local points = Q70078ClientConfig.Points

function Q7007809Trigger:OnPostDataPrepare()
    print("Q7007809Trigger - OnPostDataPrepare")
    this = self
end

function Q7007809Trigger:OnPostComponentPrepare()
    print("Q7007809Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70078)
end

function Q7007809Trigger:TriggerIn()
    print("Q7007809Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7007809)
    this:DestroySelf()
end

function Q7007809Trigger:PreTriggerIn()
    print("Q7007809Trigger - PreTriggerIn")
end

function Q7007809Trigger:LightUpTriggerIn()
    print("Q7007809Trigger - LightUpTriggerIn")
end

function Q7007809Trigger:TriggerOut()
    print("Q7007809Trigger - TriggerOut")
end

return Q7007809Trigger
