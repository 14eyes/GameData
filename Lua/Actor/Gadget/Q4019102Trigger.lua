require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4019102Trigger = class("Q4019102Trigger", GadgetActorProxy)
Q4019102Trigger.defaultAlias = "Q4019102Trigger"
local Q40191ClientConfig = require("Quest/Client/Q40191ClientConfig")

local this
local subIDs = Q40191ClientConfig.SubIDs
local datas = Q40191ClientConfig.Datas
local npcs = Q40191ClientConfig.Npcs
local points = Q40191ClientConfig.Points

function Q4019102Trigger:OnPostDataPrepare()
    print("Q4019102Trigger - OnPostDataPrepare")
    this = self
end

function Q4019102Trigger:OnPostComponentPrepare()
    print("Q4019102Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(12, 18, 6, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40191)
end

function Q4019102Trigger:TriggerIn()
    print("Q4019102Trigger - TriggerIn")
    actorMgr:GetActor("40191"):RequestInteraction(npcs.Npc15070.alias, "", true)
    this:DestroySelf()
end

function Q4019102Trigger:PreTriggerIn()
    print("Q4019102Trigger - PreTriggerIn")
end

function Q4019102Trigger:LightUpTriggerIn()
    print("Q4019102Trigger - LightUpTriggerIn")
end

function Q4019102Trigger:TriggerOut()
    print("Q4019102Trigger - TriggerOut")
end

return Q4019102Trigger
