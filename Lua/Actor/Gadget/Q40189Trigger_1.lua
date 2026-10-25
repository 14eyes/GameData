require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40189Trigger_1 = class("Q40189Trigger_1", GadgetActorProxy)
Q40189Trigger_1.defaultAlias = "Q40189Trigger_1"
local Q40189ClientConfig = require("Quest/Client/Q40189ClientConfig")

local this
local subIDs = Q40189ClientConfig.SubIDs
local datas = Q40189ClientConfig.Datas
local npcs = Q40189ClientConfig.Npcs
local points = Q40189ClientConfig.Points

function Q40189Trigger_1:OnPostDataPrepare()
    print("Q40189Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q40189Trigger_1:OnPostComponentPrepare()
    print("Q40189Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40189)
end

function Q40189Trigger_1:TriggerIn()
    print("Q40189Trigger_1 - TriggerIn")
    actorMgr:GetActor("40189"):RequestInteraction(npcs.Npc1075.alias, "", true)
    this:DestroySelf()
end

function Q40189Trigger_1:PreTriggerIn()
    print("Q40189Trigger_1 - PreTriggerIn")
end

function Q40189Trigger_1:LightUpTriggerIn()
    print("Q40189Trigger_1 - LightUpTriggerIn")
end

function Q40189Trigger_1:TriggerOut()
    print("Q40189Trigger_1 - TriggerOut")
end

return Q40189Trigger_1
