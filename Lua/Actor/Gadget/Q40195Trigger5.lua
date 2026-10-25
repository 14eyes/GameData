require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40195Trigger5 = class("Q40195Trigger5", GadgetActorProxy)
Q40195Trigger5.defaultAlias = "Q40195Trigger5"
local Q40195ClientConfig = require("Quest/Client/Q40195ClientConfig")

local this
local subIDs = Q40195ClientConfig.SubIDs
local datas = Q40195ClientConfig.Datas
local npcs = Q40195ClientConfig.Npcs
local points = Q40195ClientConfig.Points

function Q40195Trigger5:OnPostDataPrepare()
    print("Q40195Trigger5 - OnPostDataPrepare")
    this = self
end

function Q40195Trigger5:OnPostComponentPrepare()
    print("Q40195Trigger5 - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40195)
end

function Q40195Trigger5:TriggerIn()
    print("Q40195Trigger5 - TriggerIn")
    actorMgr:GetActor("40195"):RequestInteraction(npcs.Npc1307.alias, "", true)
    this:DestroySelf()
end

function Q40195Trigger5:PreTriggerIn()
    print("Q40195Trigger5 - PreTriggerIn")
end

function Q40195Trigger5:LightUpTriggerIn()
    print("Q40195Trigger5 - LightUpTriggerIn")
end

function Q40195Trigger5:TriggerOut()
    print("Q40195Trigger5 - TriggerOut")
end

return Q40195Trigger5
