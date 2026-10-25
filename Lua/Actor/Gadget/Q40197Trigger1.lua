require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40197Trigger1 = class("Q40197Trigger1", GadgetActorProxy)
Q40197Trigger1.defaultAlias = "Q40197Trigger1"
local Q40197ClientConfig = require("Quest/Client/Q40197ClientConfig")

local this
local subIDs = Q40197ClientConfig.SubIDs
local npcs = Q40197ClientConfig.Npcs
local points = Q40197ClientConfig.Points

function Q40197Trigger1:OnPostDataPrepare()
    print("Q40197Trigger1 - OnPostDataPrepare")
    this = self
end

function Q40197Trigger1:OnPostComponentPrepare()
    print("Q40197Trigger1 - OnPostComponentPrepare")
    this:AddComponentTrigger(18, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40197)
end

function Q40197Trigger1:TriggerIn()
    print("Q40197Trigger1 - TriggerIn")
    actorMgr:GetActor("40197"):ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, function(arg1)
        actorMgr:GetActor("40197"):CreateQuestNpcById(4019706, npcs.Npc1075.id, 0, false, 0)
        actorMgr:GetActor("40197"):RequestInteraction(npcs.Npc1075.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q40197Trigger1:PreTriggerIn()
    print("Q40197Trigger1 - PreTriggerIn")
end

function Q40197Trigger1:LightUpTriggerIn()
    print("Q40197Trigger1 - LightUpTriggerIn")
end

function Q40197Trigger1:TriggerOut()
    print("Q40197Trigger1 - TriggerOut")
end

return Q40197Trigger1
