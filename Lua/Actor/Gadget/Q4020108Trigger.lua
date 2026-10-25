require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4020108Trigger = class("Q4020108Trigger", GadgetActorProxy)
Q4020108Trigger.defaultAlias = "Q4020108Trigger"
local Q40201ClientConfig = require("Quest/Client/Q40201ClientConfig")

local this
local subIDs = Q40201ClientConfig.SubIDs
local datas = Q40201ClientConfig.Datas
local npcs = Q40201ClientConfig.Npcs
local points = Q40201ClientConfig.Points

function Q4020108Trigger:OnPostDataPrepare()
    print("Q4020108Trigger - OnPostDataPrepare")
    this = self
end

function Q4020108Trigger:OnPostComponentPrepare()
    print("Q4020108Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40201)
end

function Q4020108Trigger:TriggerIn()
    print("Q4020108Trigger - TriggerIn")
    actorMgr:GetActor("40201"):RequestInteraction(npcs.Npc1048.alias, "", true)
    this:DestroySelf()
end

function Q4020108Trigger:PreTriggerIn()
    print("Q4020108Trigger - PreTriggerIn")
end

function Q4020108Trigger:LightUpTriggerIn()
    print("Q4020108Trigger - LightUpTriggerIn")
end

function Q4020108Trigger:TriggerOut()
    print("Q4020108Trigger - TriggerOut")
end

return Q4020108Trigger
