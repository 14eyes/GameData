require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7620201Trigger = class("Q7620201Trigger", GadgetActorProxy)
Q7620201Trigger.defaultAlias = "Q7620201Trigger"
local Q76202ClientConfig = require("Quest/Client/Q76202ClientConfig")

local this
local subIDs = Q76202ClientConfig.SubIDs
local datas = Q76202ClientConfig.Datas
local npcs = Q76202ClientConfig.Npcs
local points = Q76202ClientConfig.Points

function Q7620201Trigger:OnPostDataPrepare()
    print("Q7620201Trigger - OnPostDataPrepare")
    this = self
end

function Q7620201Trigger:OnPostComponentPrepare()
    print("Q7620201Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(65, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76202)
end

function Q7620201Trigger:TriggerIn()
    print("Q7620201Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7620201)
    this:DestroySelf()
end

function Q7620201Trigger:PreTriggerIn()
    print("Q7620201Trigger - PreTriggerIn")
end

function Q7620201Trigger:LightUpTriggerIn()
    print("Q7620201Trigger - LightUpTriggerIn")
end

function Q7620201Trigger:TriggerOut()
    print("Q7620201Trigger - TriggerOut")
end

return Q7620201Trigger
