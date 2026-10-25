require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600901Trigger = class("Q7600901Trigger", GadgetActorProxy)
Q7600901Trigger.defaultAlias = "Q7600901Trigger"
local Q76009ClientConfig = require("Quest/Client/Q76009ClientConfig")

local this
local subIDs = Q76009ClientConfig.SubIDs
local datas = Q76009ClientConfig.Datas
local npcs = Q76009ClientConfig.Npcs
local points = Q76009ClientConfig.Points

function Q7600901Trigger:OnPostDataPrepare()
    print("Q7600901Trigger - OnPostDataPrepare")
    this = self
end

function Q7600901Trigger:OnPostComponentPrepare()
    print("Q7600901Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76009)
end

function Q7600901Trigger:TriggerIn()
    print("Q7600901Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600901)
    this:DestroySelf()
end

function Q7600901Trigger:PreTriggerIn()
    print("Q7600901Trigger - PreTriggerIn")
end

function Q7600901Trigger:LightUpTriggerIn()
    print("Q7600901Trigger - LightUpTriggerIn")
end

function Q7600901Trigger:TriggerOut()
    print("Q7600901Trigger - TriggerOut")
end

return Q7600901Trigger
