require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7111406trigger = class("Q7111406trigger", GadgetActorProxy)
Q7111406trigger.defaultAlias = "Q7111406trigger"
local Q71114ClientConfig = require("Quest/Client/Q71114ClientConfig")

local this
local subIDs = Q71114ClientConfig.SubIDs
local datas = Q71114ClientConfig.Datas
local npcs = Q71114ClientConfig.Npcs
local points = Q71114ClientConfig.Points

function Q7111406trigger:OnPostDataPrepare()
    print("Q7111406trigger - OnPostDataPrepare")
    this = self
end

function Q7111406trigger:OnPostComponentPrepare()
    print("Q7111406trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71114)
end

function Q7111406trigger:TriggerIn()
    print("Q7111406trigger - TriggerIn")
    actorUtils.FinishQuestID(false, nil)
    this:DestroySelf()
end

function Q7111406trigger:PreTriggerIn()
    print("Q7111406trigger - PreTriggerIn")
end

function Q7111406trigger:LightUpTriggerIn()
    print("Q7111406trigger - LightUpTriggerIn")
end

function Q7111406trigger:TriggerOut()
    print("Q7111406trigger - TriggerOut")
end

return Q7111406trigger
