require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7667512Trigger = class("Q7667512Trigger", GadgetActorProxy)
Q7667512Trigger.defaultAlias = "Q7667512Trigger"
local Q76675ClientConfig = require("Quest/Client/Q76675ClientConfig")

local this
local subIDs = Q76675ClientConfig.SubIDs
local datas = Q76675ClientConfig.Datas
local npcs = Q76675ClientConfig.Npcs
local points = Q76675ClientConfig.Points

function Q7667512Trigger:OnPostDataPrepare()
    print("Q7667512Trigger - OnPostDataPrepare")
    this = self
end

function Q7667512Trigger:OnPostComponentPrepare()
    print("Q7667512Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76675)
end

function Q7667512Trigger:TriggerIn()
    print("Q7667512Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7667512)
    this:DestroySelf()
end

function Q7667512Trigger:PreTriggerIn()
    print("Q7667512Trigger - PreTriggerIn")
end

function Q7667512Trigger:LightUpTriggerIn()
    print("Q7667512Trigger - LightUpTriggerIn")
end

function Q7667512Trigger:TriggerOut()
    print("Q7667512Trigger - TriggerOut")
end

return Q7667512Trigger
