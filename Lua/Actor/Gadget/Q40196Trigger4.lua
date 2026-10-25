require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40196Trigger4 = class("Q40196Trigger4", GadgetActorProxy)
Q40196Trigger4.defaultAlias = "Q40196Trigger4"
local Q40196ClientConfig = require("Quest/Client/Q40196ClientConfig")

local this
local subIDs = Q40196ClientConfig.SubIDs
local datas = Q40196ClientConfig.Datas
local npcs = Q40196ClientConfig.Npcs
local points = Q40196ClientConfig.Points

function Q40196Trigger4:OnPostDataPrepare()
    print("Q40196Trigger4 - OnPostDataPrepare")
    this = self
end

function Q40196Trigger4:OnPostComponentPrepare()
    print("Q40196Trigger4 - OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40196)
end

function Q40196Trigger4:TriggerIn()
    print("Q40196Trigger4 - TriggerIn")
    actorMgr:GetActor("40196"):RequestInteraction(npcs.Npc1070.alias, "", true)
    this:DestroySelf()
end

function Q40196Trigger4:PreTriggerIn()
    print("Q40196Trigger4 - PreTriggerIn")
end

function Q40196Trigger4:LightUpTriggerIn()
    print("Q40196Trigger4 - LightUpTriggerIn")
end

function Q40196Trigger4:TriggerOut()
    print("Q40196Trigger4 - TriggerOut")
end

return Q40196Trigger4
