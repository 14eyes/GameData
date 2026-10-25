require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1404602Trigger = class("Q1404602Trigger", GadgetActorProxy)
Q1404602Trigger.defaultAlias = "Q1404602Trigger"
local Q14046ClientConfig = require("Quest/Client/Q14046ClientConfig")

local this
local subIDs = Q14046ClientConfig.SubIDs
local datas = Q14046ClientConfig.Datas
local npcs = Q14046ClientConfig.Npcs
local points = Q14046ClientConfig.Points

function Q1404602Trigger:OnPostDataPrepare()
    print("Q1404602Trigger - OnPostDataPrepare")
    this = self
end

function Q1404602Trigger:OnPostComponentPrepare()
    print("Q1404602Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(102.33283, 34.094772, 9.565579, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14046)
end

function Q1404602Trigger:TriggerIn()
    print("Q1404602Trigger - TriggerIn")
    actorMgr:GetActor("14046"):RequestInteraction(npcs.Npc1308.alias, "", true)
    this:DestroySelf()
end

function Q1404602Trigger:PreTriggerIn()
    print("Q1404602Trigger - PreTriggerIn")
end

function Q1404602Trigger:LightUpTriggerIn()
    print("Q1404602Trigger - LightUpTriggerIn")
end

function Q1404602Trigger:TriggerOut()
    print("Q1404602Trigger - TriggerOut")
end

return Q1404602Trigger
