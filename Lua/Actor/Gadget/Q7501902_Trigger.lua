require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7501902_Trigger = class("Q7501902_Trigger", GadgetActorProxy)
Q7501902_Trigger.defaultAlias = "Q7501902_Trigger"
local Q75019ClientConfig = require("Quest/Client/Q75019ClientConfig")

local this
local subIDs = Q75019ClientConfig.SubIDs
local datas = Q75019ClientConfig.Datas
local npcs = Q75019ClientConfig.Npcs
local points = Q75019ClientConfig.Points

function Q7501902_Trigger:OnPostDataPrepare()
    print("Q7501902_Trigger - OnPostDataPrepare")
    this = self
end

function Q7501902_Trigger:OnPostComponentPrepare()
    print("Q7501902_Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(34.335197, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75019)
end

function Q7501902_Trigger:TriggerIn()
    print("Q7501902_Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7501902)
    this:DestroySelf()
end

function Q7501902_Trigger:PreTriggerIn()
    print("Q7501902_Trigger - PreTriggerIn")
end

function Q7501902_Trigger:LightUpTriggerIn()
    print("Q7501902_Trigger - LightUpTriggerIn")
end

function Q7501902_Trigger:TriggerOut()
    print("Q7501902_Trigger - TriggerOut")
end

return Q7501902_Trigger
