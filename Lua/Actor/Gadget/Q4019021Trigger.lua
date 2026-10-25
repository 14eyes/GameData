require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4019021Trigger = class("Q4019021Trigger", GadgetActorProxy)
Q4019021Trigger.defaultAlias = "Q4019021Trigger"
local Q40190ClientConfig = require("Quest/Client/Q40190ClientConfig")

local this
local subIDs = Q40190ClientConfig.SubIDs
local datas = Q40190ClientConfig.Datas
local npcs = Q40190ClientConfig.Npcs
local points = Q40190ClientConfig.Points

function Q4019021Trigger:OnPostDataPrepare()
    print("Q4019021Trigger - OnPostDataPrepare")
    this = self
end

function Q4019021Trigger:OnPostComponentPrepare()
    print("Q4019021Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40190)
end

function Q4019021Trigger:TriggerIn()
    print("Q4019021Trigger - TriggerIn")
    actorMgr:GetActor("40190"):ShowBlackScreenWithDialogText(0.5, 2, 0.5, function(arg1)
        actorMgr:GetActor("40190"):RequestInteraction(npcs.Npc1034.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q4019021Trigger:PreTriggerIn()
    print("Q4019021Trigger - PreTriggerIn")
end

function Q4019021Trigger:LightUpTriggerIn()
    print("Q4019021Trigger - LightUpTriggerIn")
end

function Q4019021Trigger:TriggerOut()
    print("Q4019021Trigger - TriggerOut")
end

return Q4019021Trigger
