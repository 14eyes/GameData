require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7550502 = class("Q7550502", GadgetActorProxy)
Q7550502.defaultAlias = "Q7550502"
local Q75505ClientConfig = require("Quest/Client/Q75505ClientConfig")

local this
local subIDs = Q75505ClientConfig.SubIDs
local npcs = Q75505ClientConfig.Npcs
local points = Q75505ClientConfig.Points

function Q7550502:OnPostDataPrepare()
    print("Q7550502 - OnPostDataPrepare")
    this = self
end

function Q7550502:OnPostComponentPrepare()
    print("Q7550502 - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75505)
end

function Q7550502:TriggerIn()
    print("Q7550502 - TriggerIn")
    actorMgr:GetActor("75505"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("75505"):RequestInteraction(npcs.Npc1095.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q7550502:PreTriggerIn()
    print("Q7550502 - PreTriggerIn")
end

function Q7550502:LightUpTriggerIn()
    print("Q7550502 - LightUpTriggerIn")
end

function Q7550502:TriggerOut()
    print("Q7550502 - TriggerOut")
end

return Q7550502
