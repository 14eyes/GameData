require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411634Trigger = class("Q7411634Trigger", GadgetActorProxy)
Q7411634Trigger.defaultAlias = "Q7411634Trigger"
local Q74116ClientConfig = require("Quest/Client/Q74116ClientConfig")

local this
local subIDs = Q74116ClientConfig.SubIDs
local datas = Q74116ClientConfig.Datas
local npcs = Q74116ClientConfig.Npcs
local points = Q74116ClientConfig.Points

function Q7411634Trigger:OnPostDataPrepare()
    print("Q7411634Trigger - OnPostDataPrepare")
    this = self
end

function Q7411634Trigger:OnPostComponentPrepare()
    print("Q7411634Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74116)
end

function Q7411634Trigger:TriggerIn()
    print("Q7411634Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7411634)
    this:DestroySelf()
end

function Q7411634Trigger:PreTriggerIn()
    print("Q7411634Trigger - PreTriggerIn")
end

function Q7411634Trigger:LightUpTriggerIn()
    print("Q7411634Trigger - LightUpTriggerIn")
end

function Q7411634Trigger:TriggerOut()
    print("Q7411634Trigger - TriggerOut")
end

return Q7411634Trigger
