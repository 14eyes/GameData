require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40195Trigger11 = class("Q40195Trigger11", GadgetActorProxy)
Q40195Trigger11.defaultAlias = "Q40195Trigger11"
local Q40195ClientConfig = require("Quest/Client/Q40195ClientConfig")

local this
local subIDs = Q40195ClientConfig.SubIDs
local datas = Q40195ClientConfig.Datas
local npcs = Q40195ClientConfig.Npcs
local points = Q40195ClientConfig.Points

function Q40195Trigger11:OnPostDataPrepare()
    print("Q40195Trigger11 - OnPostDataPrepare")
    this = self
end

function Q40195Trigger11:OnPostComponentPrepare()
    print("Q40195Trigger11 - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(40, 20, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40195)
end

function Q40195Trigger11:TriggerIn()
    print("Q40195Trigger11 - TriggerIn")
    actorMgr:GetActor("40195"):RequestInteraction(npcs.Npc1307.alias, "", true)
    this:DestroySelf()
end

function Q40195Trigger11:PreTriggerIn()
    print("Q40195Trigger11 - PreTriggerIn")
end

function Q40195Trigger11:LightUpTriggerIn()
    print("Q40195Trigger11 - LightUpTriggerIn")
end

function Q40195Trigger11:TriggerOut()
    print("Q40195Trigger11 - TriggerOut")
end

return Q40195Trigger11
