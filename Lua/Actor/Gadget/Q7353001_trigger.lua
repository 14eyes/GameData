require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7353001_trigger = class("Q7353001_trigger", GadgetActorProxy)
Q7353001_trigger.defaultAlias = "Q7353001_trigger"
local Q73530ClientConfig = require("Quest/Client/Q73530ClientConfig")

local this
local subIDs = Q73530ClientConfig.SubIDs
local npcs = Q73530ClientConfig.Npcs
local points = Q73530ClientConfig.Points

function Q7353001_trigger:OnPostDataPrepare()
    print("Q7353001_trigger - OnPostDataPrepare")
    this = self
end

function Q7353001_trigger:OnPostComponentPrepare()
    print("Q7353001_trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 73530)
end

function Q7353001_trigger:TriggerIn()
    print("Q7353001_trigger - TriggerIn")
    actorMgr:GetActor("73530"):ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("73530"):RequestInteraction(npcs.Npc30225.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q7353001_trigger:PreTriggerIn()
    print("Q7353001_trigger - PreTriggerIn")
end

function Q7353001_trigger:LightUpTriggerIn()
    print("Q7353001_trigger - LightUpTriggerIn")
end

function Q7353001_trigger:TriggerOut()
    print("Q7353001_trigger - TriggerOut")
end

return Q7353001_trigger
