require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4020105Trigger = class("Q4020105Trigger", GadgetActorProxy)
Q4020105Trigger.defaultAlias = "Q4020105Trigger"
local Q40201ClientConfig = require("Quest/Client/Q40201ClientConfig")

local this
local subIDs = Q40201ClientConfig.SubIDs
local datas = Q40201ClientConfig.Datas
local npcs = Q40201ClientConfig.Npcs
local points = Q40201ClientConfig.Points

function Q4020105Trigger:OnPostDataPrepare()
    print("Q4020105Trigger - OnPostDataPrepare")
    this = self
end

function Q4020105Trigger:OnPostComponentPrepare()
    print("Q4020105Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40201)
end

function Q4020105Trigger:TriggerIn()
    print("Q4020105Trigger - TriggerIn")
    actorMgr:GetActor("40201"):RequestInteraction(npcs.Npc1048.alias, "", true)
    this:DestroySelf()
end

function Q4020105Trigger:PreTriggerIn()
    print("Q4020105Trigger - PreTriggerIn")
end

function Q4020105Trigger:LightUpTriggerIn()
    print("Q4020105Trigger - LightUpTriggerIn")
end

function Q4020105Trigger:TriggerOut()
    print("Q4020105Trigger - TriggerOut")
end

return Q4020105Trigger
