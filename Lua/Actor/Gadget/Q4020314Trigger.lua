require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4020314Trigger = class("Q4020314Trigger", GadgetActorProxy)
Q4020314Trigger.defaultAlias = "Q4020314Trigger"
local Q40203ClientConfig = require("Quest/Client/Q40203ClientConfig")

local this
local subIDs = Q40203ClientConfig.SubIDs
local datas = Q40203ClientConfig.Datas
local npcs = Q40203ClientConfig.Npcs
local points = Q40203ClientConfig.Points

function Q4020314Trigger:OnPostDataPrepare()
    print("Q4020314Trigger - OnPostDataPrepare")
    this = self
end

function Q4020314Trigger:OnPostComponentPrepare()
    print("Q4020314Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40203)
end

function Q4020314Trigger:TriggerIn()
    print("Q4020314Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 4020314)
    this:DestroySelf()
end

function Q4020314Trigger:PreTriggerIn()
    print("Q4020314Trigger - PreTriggerIn")
end

function Q4020314Trigger:LightUpTriggerIn()
    print("Q4020314Trigger - LightUpTriggerIn")
end

function Q4020314Trigger:TriggerOut()
    print("Q4020314Trigger - TriggerOut")
end

return Q4020314Trigger
