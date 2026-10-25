require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7007901Trigger = class("Q7007901Trigger", GadgetActorProxy)
Q7007901Trigger.defaultAlias = "Q7007901Trigger"
local Q70079ClientConfig = require("Quest/Client/Q70079ClientConfig")

local this
local subIDs = Q70079ClientConfig.SubIDs
local datas = Q70079ClientConfig.Datas
local npcs = Q70079ClientConfig.Npcs
local points = Q70079ClientConfig.Points

function Q7007901Trigger:OnPostDataPrepare()
    print("Q7007901Trigger - OnPostDataPrepare")
    this = self
end

function Q7007901Trigger:OnPostComponentPrepare()
    print("Q7007901Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70079)
end

function Q7007901Trigger:TriggerIn()
    print("Q7007901Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7007901)
    this:DestroySelf()
end

function Q7007901Trigger:PreTriggerIn()
    print("Q7007901Trigger - PreTriggerIn")
end

function Q7007901Trigger:LightUpTriggerIn()
    print("Q7007901Trigger - LightUpTriggerIn")
end

function Q7007901Trigger:TriggerOut()
    print("Q7007901Trigger - TriggerOut")
end

return Q7007901Trigger
