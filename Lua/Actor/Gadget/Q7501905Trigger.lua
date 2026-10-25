require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7501905Trigger = class("Q7501905Trigger", GadgetActorProxy)
Q7501905Trigger.defaultAlias = "Q7501905Trigger"
local Q75019ClientConfig = require("Quest/Client/Q75019ClientConfig")

local this
local subIDs = Q75019ClientConfig.SubIDs
local datas = Q75019ClientConfig.Datas
local npcs = Q75019ClientConfig.Npcs
local points = Q75019ClientConfig.Points

function Q7501905Trigger:OnPostDataPrepare()
    print("Q7501905Trigger - OnPostDataPrepare")
    this = self
end

function Q7501905Trigger:OnPostComponentPrepare()
    print("Q7501905Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75019)
end

function Q7501905Trigger:TriggerIn()
    print("Q7501905Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7501905)
    this:DestroySelf()
end

function Q7501905Trigger:PreTriggerIn()
    print("Q7501905Trigger - PreTriggerIn")
end

function Q7501905Trigger:LightUpTriggerIn()
    print("Q7501905Trigger - LightUpTriggerIn")
end

function Q7501905Trigger:TriggerOut()
    print("Q7501905Trigger - TriggerOut")
end

return Q7501905Trigger
