require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7524012Trigger = class("Q7524012Trigger", GadgetActorProxy)
Q7524012Trigger.defaultAlias = "Q7524012Trigger"
local Q75240ClientConfig = require("Quest/Client/Q75240ClientConfig")

local this
local subIDs = Q75240ClientConfig.SubIDs
local datas = Q75240ClientConfig.Datas
local npcs = Q75240ClientConfig.Npcs
local points = Q75240ClientConfig.Points

function Q7524012Trigger:OnPostDataPrepare()
    print("Q7524012Trigger - OnPostDataPrepare")
    this = self
end

function Q7524012Trigger:OnPostComponentPrepare()
    print("Q7524012Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(25, 20, 15, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75240)
end

function Q7524012Trigger:TriggerIn()
    print("Q7524012Trigger - TriggerIn")
    actorMgr:GetActor("75240"):RequestInteraction(npcs.Npc21962.alias, "", true)
end

function Q7524012Trigger:PreTriggerIn()
    print("Q7524012Trigger - PreTriggerIn")
end

function Q7524012Trigger:LightUpTriggerIn()
    print("Q7524012Trigger - LightUpTriggerIn")
end

function Q7524012Trigger:TriggerOut()
    print("Q7524012Trigger - TriggerOut")
end

return Q7524012Trigger
