require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7550501 = class("Q7550501", GadgetActorProxy)
Q7550501.defaultAlias = "Q7550501"
local Q75505ClientConfig = require("Quest/Client/Q75505ClientConfig")

local this
local subIDs = Q75505ClientConfig.SubIDs
local npcs = Q75505ClientConfig.Npcs
local points = Q75505ClientConfig.Points

function Q7550501:OnPostDataPrepare()
    print("Q7550501 - OnPostDataPrepare")
    this = self
end

function Q7550501:OnPostComponentPrepare()
    print("Q7550501 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75505)
end

function Q7550501:TriggerIn()
    print("Q7550501 - TriggerIn")
    actorMgr:GetActor("75505"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("75505"):CreateQuestNpcById(7550502, 1095, 0, false, 0)
        actorMgr:GetActor("75505"):RequestInteraction(npcs.Npc1095.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q7550501:PreTriggerIn()
    print("Q7550501 - PreTriggerIn")
end

function Q7550501:LightUpTriggerIn()
    print("Q7550501 - LightUpTriggerIn")
end

function Q7550501:TriggerOut()
    print("Q7550501 - TriggerOut")
end

return Q7550501
