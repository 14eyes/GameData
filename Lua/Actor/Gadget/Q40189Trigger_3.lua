require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40189Trigger_3 = class("Q40189Trigger_3", GadgetActorProxy)
Q40189Trigger_3.defaultAlias = "Q40189Trigger_3"
local Q40189ClientConfig = require("Quest/Client/Q40189ClientConfig")

local this
local subIDs = Q40189ClientConfig.SubIDs
local datas = Q40189ClientConfig.Datas
local npcs = Q40189ClientConfig.Npcs
local points = Q40189ClientConfig.Points

function Q40189Trigger_3:OnPostDataPrepare()
    print("Q40189Trigger_3 - OnPostDataPrepare")
    this = self
end

function Q40189Trigger_3:OnPostComponentPrepare()
    print("Q40189Trigger_3 - OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40189)
end

function Q40189Trigger_3:TriggerIn()
    print("Q40189Trigger_3 - TriggerIn")
    actorMgr:GetActor("40189"):RequestInteraction(npcs.Npc30824.alias, "", true)
    this:DestroySelf()
end

function Q40189Trigger_3:PreTriggerIn()
    print("Q40189Trigger_3 - PreTriggerIn")
end

function Q40189Trigger_3:LightUpTriggerIn()
    print("Q40189Trigger_3 - LightUpTriggerIn")
end

function Q40189Trigger_3:TriggerOut()
    print("Q40189Trigger_3 - TriggerOut")
end

return Q40189Trigger_3
