require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7602417Trigger = class("Q7602417Trigger", GadgetActorProxy)
Q7602417Trigger.defaultAlias = "Q7602417Trigger"
local Q76024ClientConfig = require("Quest/Client/Q76024ClientConfig")

local this
local subIDs = Q76024ClientConfig.SubIDs
local datas = Q76024ClientConfig.Datas
local npcs = Q76024ClientConfig.Npcs
local points = Q76024ClientConfig.Points

function Q7602417Trigger:OnPostDataPrepare()
    print("Q7602417Trigger - OnPostDataPrepare")
    this = self
end

function Q7602417Trigger:OnPostComponentPrepare()
    print("Q7602417Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76024)
end

function Q7602417Trigger:TriggerIn()
    print("Q7602417Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7602417)
    this:DestroySelf()
end

function Q7602417Trigger:PreTriggerIn()
    print("Q7602417Trigger - PreTriggerIn")
end

function Q7602417Trigger:LightUpTriggerIn()
    print("Q7602417Trigger - LightUpTriggerIn")
end

function Q7602417Trigger:TriggerOut()
    print("Q7602417Trigger - TriggerOut")
end

return Q7602417Trigger
