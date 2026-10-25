require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7620210Trigger = class("Q7620210Trigger", GadgetActorProxy)
Q7620210Trigger.defaultAlias = "Q7620210Trigger"
local Q76202ClientConfig = require("Quest/Client/Q76202ClientConfig")

local this
local subIDs = Q76202ClientConfig.SubIDs
local datas = Q76202ClientConfig.Datas
local npcs = Q76202ClientConfig.Npcs
local points = Q76202ClientConfig.Points

function Q7620210Trigger:OnPostDataPrepare()
    print("Q7620210Trigger - OnPostDataPrepare")
    this = self
end

function Q7620210Trigger:OnPostComponentPrepare()
    print("Q7620210Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76202)
end

function Q7620210Trigger:TriggerIn()
    print("Q7620210Trigger - TriggerIn")
    actorMgr:GetActor("76202"):TransmitPlayerByQuestId(7620210, 1, nil, nil, nil)
    this:DestroySelf()
end

function Q7620210Trigger:PreTriggerIn()
    print("Q7620210Trigger - PreTriggerIn")
end

function Q7620210Trigger:LightUpTriggerIn()
    print("Q7620210Trigger - LightUpTriggerIn")
end

function Q7620210Trigger:TriggerOut()
    print("Q7620210Trigger - TriggerOut")
end

return Q7620210Trigger
