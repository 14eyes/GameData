require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40195Trigger10 = class("Q40195Trigger10", GadgetActorProxy)
Q40195Trigger10.defaultAlias = "Q40195Trigger10"
local Q40195ClientConfig = require("Quest/Client/Q40195ClientConfig")

local this
local subIDs = Q40195ClientConfig.SubIDs
local datas = Q40195ClientConfig.Datas
local npcs = Q40195ClientConfig.Npcs
local points = Q40195ClientConfig.Points

function Q40195Trigger10:OnPostDataPrepare()
    print("Q40195Trigger10 - OnPostDataPrepare")
    this = self
end

function Q40195Trigger10:OnPostComponentPrepare()
    print("Q40195Trigger10 - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(60, 20, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40195)
end

function Q40195Trigger10:TriggerIn()
    print("Q40195Trigger10 - TriggerIn")
end

function Q40195Trigger10:PreTriggerIn()
    print("Q40195Trigger10 - PreTriggerIn")
end

function Q40195Trigger10:LightUpTriggerIn()
    print("Q40195Trigger10 - LightUpTriggerIn")
end

function Q40195Trigger10:TriggerOut()
    print("Q40195Trigger10 - TriggerOut")
    actorUtils.FinishQuestID(true, 4019504)
    actorUtils.FinishQuestID(true, 4019514)
    actorUtils.FinishQuestID(true, 4019515)
    actorUtils.FinishQuestID(true, 4019505)
    this:DestroySelf()
end

return Q40195Trigger10
