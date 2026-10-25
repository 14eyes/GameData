require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q801902Trigger = class("Q801902Trigger", GadgetActorProxy)
Q801902Trigger.defaultAlias = "Q801902Trigger"
local Q8019ClientConfig = require("Quest/Client/Q8019ClientConfig")

local this
local subIDs = Q8019ClientConfig.SubIDs
local datas = Q8019ClientConfig.Datas
local npcs = Q8019ClientConfig.Npcs
local points = Q8019ClientConfig.Points

function Q801902Trigger:OnPostDataPrepare()
    print("Q801902Trigger - OnPostDataPrepare")
    this = self
end

function Q801902Trigger:OnPostComponentPrepare()
    print("Q801902Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(90, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 8019)
end

function Q801902Trigger:TriggerIn()
    print("Q801902Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 801902)
    this:DestroySelf()
end

function Q801902Trigger:PreTriggerIn()
    print("Q801902Trigger - PreTriggerIn")
end

function Q801902Trigger:LightUpTriggerIn()
    print("Q801902Trigger - LightUpTriggerIn")
end

function Q801902Trigger:TriggerOut()
    print("Q801902Trigger - TriggerOut")
end

return Q801902Trigger
