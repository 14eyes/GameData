require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q5026Trigger16 = class("Q5026Trigger16", GadgetActorProxy)
Q5026Trigger16.defaultAlias = "Q5026Trigger16"
local Q5026ClientConfig = require("Quest/Client/Q5026ClientConfig")

local this
local subIDs = Q5026ClientConfig.SubIDs
local datas = Q5026ClientConfig.Datas
local npcs = Q5026ClientConfig.Npcs
local points = Q5026ClientConfig.Points

function Q5026Trigger16:OnPostDataPrepare()
    print("Q5026Trigger16 - OnPostDataPrepare")
    this = self
end

function Q5026Trigger16:OnPostComponentPrepare()
    print("Q5026Trigger16 - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5026)
end

function Q5026Trigger16:TriggerIn()
    print("Q5026Trigger16 - TriggerIn")
    actorMgr:GetActor("5026"):ShowBlackScreenWithDialogText(0, 0.5, 0.5, function(arg1)
        actorMgr:GetActor("5026"):RequestInteraction(npcs.Npc6241.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q5026Trigger16:PreTriggerIn()
    print("Q5026Trigger16 - PreTriggerIn")
end

function Q5026Trigger16:LightUpTriggerIn()
    print("Q5026Trigger16 - LightUpTriggerIn")
    actorMgr:GetActor("5026"):ShowBlackScreenWithDialogText(0, 0.5, 0.5, nil, nil, nil, 0, false, true)
end

function Q5026Trigger16:TriggerOut()
    print("Q5026Trigger16 - TriggerOut")
end

return Q5026Trigger16
