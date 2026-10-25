require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609307Trigger = class("Q7609307Trigger", GadgetActorProxy)
Q7609307Trigger.defaultAlias = "Q7609307Trigger"
local Q76093ClientConfig = require("Quest/Client/Q76093ClientConfig")

local this
local subIDs = Q76093ClientConfig.SubIDs
local datas = Q76093ClientConfig.Datas
local npcs = Q76093ClientConfig.Npcs
local points = Q76093ClientConfig.Points

function Q7609307Trigger:OnPostDataPrepare()
    print("Q7609307Trigger - OnPostDataPrepare")
    this = self
end

function Q7609307Trigger:OnPostComponentPrepare()
    print("Q7609307Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76093)
end

function Q7609307Trigger:TriggerIn()
    print("Q7609307Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7609307)
    this:DestroySelf()
end

function Q7609307Trigger:PreTriggerIn()
    print("Q7609307Trigger - PreTriggerIn")
end

function Q7609307Trigger:LightUpTriggerIn()
    print("Q7609307Trigger - LightUpTriggerIn")
end

function Q7609307Trigger:TriggerOut()
    print("Q7609307Trigger - TriggerOut")
end

return Q7609307Trigger
