require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40092Trigger4 = class("Q40092Trigger4", GadgetActorProxy)
Q40092Trigger4.defaultAlias = "Q40092Trigger4"
local Q40092ClientConfig = require("Quest/Client/Q40092ClientConfig")

local this
local subIDs = Q40092ClientConfig.SubIDs
local npcs = Q40092ClientConfig.Npcs
local gadgets = Q40092ClientConfig.Gadgets
local datas = Q40092ClientConfig.Datas

function Q40092Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q40092Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q40092Trigger4:TriggerIn()
    print("TriggerIn")
    this:DestroySelf()
    actorMgr:GetActor("40092"):RequestInteraction(npcs.Npc1066Data.alias)
end

function Q40092Trigger4:PreTriggerIn()
    print("PreTriggerIn")
end

function Q40092Trigger4:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q40092Trigger4:TriggerOut()
    print("TriggerOut")
end

return Q40092Trigger4
