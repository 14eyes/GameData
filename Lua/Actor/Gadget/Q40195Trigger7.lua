require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40195Trigger7 = class("Q40195Trigger7", GadgetActorProxy)
Q40195Trigger7.defaultAlias = "Q40195Trigger7"
local Q40195ClientConfig = require("Quest/Client/Q40195ClientConfig")

local this
local subIDs = Q40195ClientConfig.SubIDs
local datas = Q40195ClientConfig.Datas
local npcs = Q40195ClientConfig.Npcs
local points = Q40195ClientConfig.Points

function Q40195Trigger7:OnPostDataPrepare()
    print("Q40195Trigger7 - OnPostDataPrepare")
    this = self
end

function Q40195Trigger7:OnPostComponentPrepare()
    print("Q40195Trigger7 - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(140, 140, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40195)
end

function Q40195Trigger7:TriggerIn()
    print("Q40195Trigger7 - TriggerIn")
end

function Q40195Trigger7:PreTriggerIn()
    print("Q40195Trigger7 - PreTriggerIn")
end

function Q40195Trigger7:LightUpTriggerIn()
    print("Q40195Trigger7 - LightUpTriggerIn")
end

function Q40195Trigger7:TriggerOut()
    print("Q40195Trigger7 - TriggerOut")
    actorUtils.FinishQuestID(true, 4019511)
    this:DestroySelf()
end

return Q40195Trigger7
