require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1402809_Trigger = class("Q1402809_Trigger", GadgetActorProxy)
Q1402809_Trigger.defaultAlias = "Q1402809_Trigger"
local Q14028ClientConfig = require("Quest/Client/Q14028ClientConfig")

local this
local subIDs = Q14028ClientConfig.SubIDs
local datas = Q14028ClientConfig.Datas
local npcs = Q14028ClientConfig.Npcs
local points = Q14028ClientConfig.Points

function Q1402809_Trigger:OnPostDataPrepare()
    print("Q1402809_Trigger - OnPostDataPrepare")
    this = self
end

function Q1402809_Trigger:OnPostComponentPrepare()
    print("Q1402809_Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14028)
end

function Q1402809_Trigger:TriggerIn()
    print("Q1402809_Trigger - TriggerIn")
    actorMgr:GetActor("14028"):RequestInteraction(npcs.Npc14039.alias, "", true)
    this:DestroySelf()
end

function Q1402809_Trigger:PreTriggerIn()
    print("Q1402809_Trigger - PreTriggerIn")
end

function Q1402809_Trigger:LightUpTriggerIn()
    print("Q1402809_Trigger - LightUpTriggerIn")
    actorMgr:GetActor("14028"):ShowBlackScreenWithDialogText(0, 1, 0, nil, nil, nil, 0, false, true)
end

function Q1402809_Trigger:TriggerOut()
    print("Q1402809_Trigger - TriggerOut")
end

return Q1402809_Trigger
