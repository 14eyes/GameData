require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7601115Trigger = class("Q7601115Trigger", GadgetActorProxy)
Q7601115Trigger.defaultAlias = "Q7601115Trigger"
local Q76011ClientConfig = require("Quest/Client/Q76011ClientConfig")

local this
local subIDs = Q76011ClientConfig.SubIDs
local datas = Q76011ClientConfig.Datas
local npcs = Q76011ClientConfig.Npcs
local points = Q76011ClientConfig.Points

function Q7601115Trigger:OnPostDataPrepare()
    print("Q7601115Trigger - OnPostDataPrepare")
    this = self
end

function Q7601115Trigger:OnPostComponentPrepare()
    print("Q7601115Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76011)
end

function Q7601115Trigger:TriggerIn()
    print("Q7601115Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7601115)
    this:DestroySelf()
end

function Q7601115Trigger:PreTriggerIn()
    print("Q7601115Trigger - PreTriggerIn")
end

function Q7601115Trigger:LightUpTriggerIn()
    print("Q7601115Trigger - LightUpTriggerIn")
end

function Q7601115Trigger:TriggerOut()
    print("Q7601115Trigger - TriggerOut")
end

return Q7601115Trigger
