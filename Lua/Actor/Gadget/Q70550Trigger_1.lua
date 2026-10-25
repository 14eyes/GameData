require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70550Trigger_1 = class("Q70550Trigger_1", GadgetActorProxy)
Q70550Trigger_1.defaultAlias = "Q70550Trigger_1"
local Q70550ClientConfig = require("Quest/Client/Q70550ClientConfig")

local this
local subIDs = Q70550ClientConfig.SubIDs
local npcs = Q70550ClientConfig.Npcs
local points = Q70550ClientConfig.Points

function Q70550Trigger_1:OnPostDataPrepare()
    print("Q70550Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q70550Trigger_1:OnPostComponentPrepare()
    print("Q70550Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70550)
end

function Q70550Trigger_1:TriggerIn()
    print("Q70550Trigger_1 - TriggerIn")
    actorMgr:GetActor("70550"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("70550"):CreateQuestNpcById(7055006, 10090, 0, false, 0)
        actorMgr:GetActor("70550"):RequestInteraction(npcs.Npc10090.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q70550Trigger_1:PreTriggerIn()
    print("Q70550Trigger_1 - PreTriggerIn")
end

function Q70550Trigger_1:LightUpTriggerIn()
    print("Q70550Trigger_1 - LightUpTriggerIn")
end

function Q70550Trigger_1:TriggerOut()
    print("Q70550Trigger_1 - TriggerOut")
end

return Q70550Trigger_1
