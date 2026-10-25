require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600401trigger = class("Q600401trigger", GadgetActorProxy)
Q600401trigger.defaultAlias = "Q600401trigger"
local Q6004ClientConfig = require("Quest/Client/Q6004ClientConfig")

local this
local subIDs = Q6004ClientConfig.SubIDs
local datas = Q6004ClientConfig.Datas
local npcs = Q6004ClientConfig.Npcs
local points = Q6004ClientConfig.Points

function Q600401trigger:OnPostDataPrepare()
    print("Q600401trigger - OnPostDataPrepare")
    this = self
end

function Q600401trigger:OnPostComponentPrepare()
    print("Q600401trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6004)
end

function Q600401trigger:TriggerIn()
    print("Q600401trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 600401)
    this:DestroySelf()
end

function Q600401trigger:PreTriggerIn()
    print("Q600401trigger - PreTriggerIn")
end

function Q600401trigger:LightUpTriggerIn()
    print("Q600401trigger - LightUpTriggerIn")
end

function Q600401trigger:TriggerOut()
    print("Q600401trigger - TriggerOut")
end

return Q600401trigger
