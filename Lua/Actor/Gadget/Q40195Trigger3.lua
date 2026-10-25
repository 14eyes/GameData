require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40195Trigger3 = class("Q40195Trigger3", GadgetActorProxy)
Q40195Trigger3.defaultAlias = "Q40195Trigger3"
local Q40195ClientConfig = require("Quest/Client/Q40195ClientConfig")

local this
local subIDs = Q40195ClientConfig.SubIDs
local datas = Q40195ClientConfig.Datas
local npcs = Q40195ClientConfig.Npcs
local points = Q40195ClientConfig.Points

function Q40195Trigger3:OnPostDataPrepare()
    print("Q40195Trigger3 - OnPostDataPrepare")
    this = self
end

function Q40195Trigger3:OnPostComponentPrepare()
    print("Q40195Trigger3 - OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40195)
end

function Q40195Trigger3:TriggerIn()
    print("Q40195Trigger3 - TriggerIn")
    actorUtils.FinishQuestID(false, 4019510)
    this:DestroySelf()
end

function Q40195Trigger3:PreTriggerIn()
    print("Q40195Trigger3 - PreTriggerIn")
end

function Q40195Trigger3:LightUpTriggerIn()
    print("Q40195Trigger3 - LightUpTriggerIn")
end

function Q40195Trigger3:TriggerOut()
    print("Q40195Trigger3 - TriggerOut")
end

return Q40195Trigger3
