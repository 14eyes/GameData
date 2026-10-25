require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2502810Trigger = class("Q2502810Trigger", GadgetActorProxy)
Q2502810Trigger.defaultAlias = "Q2502810Trigger"
local Q25028ClientConfig = require("Quest/Client/Q25028ClientConfig")

local this
local subIDs = Q25028ClientConfig.SubIDs
local datas = Q25028ClientConfig.Datas
local npcs = Q25028ClientConfig.Npcs
local points = Q25028ClientConfig.Points

function Q2502810Trigger:OnPostDataPrepare()
    print("Q2502810Trigger - OnPostDataPrepare")
    this = self
end

function Q2502810Trigger:OnPostComponentPrepare()
    print("Q2502810Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 25028)
end

function Q2502810Trigger:TriggerIn()
    print("Q2502810Trigger - TriggerIn")
    actorMgr:GetActor("25028"):RequestInteraction(npcs.Npc14424.alias, "", true)
    this:DestroySelf()
end

function Q2502810Trigger:PreTriggerIn()
    print("Q2502810Trigger - PreTriggerIn")
end

function Q2502810Trigger:LightUpTriggerIn()
    print("Q2502810Trigger - LightUpTriggerIn")
end

function Q2502810Trigger:TriggerOut()
    print("Q2502810Trigger - TriggerOut")
end

return Q2502810Trigger
